import "dart:developer";
import "dart:ffi";

import "package:ffi/ffi.dart";

import "call_result.dart";
import "callback.dart";
import "generated/callback_structs/steam_api_call_completed.dart";
import "generated/initializers/dispatch.dart";
import "generated/structs/callback_msg.dart";
import "generated/typedefs.dart";

/// A dispatcher for asynchrouns events
class Dispatcher {
  static final Map<int, Set<Callback>> _registeredCallbacks = {};
  static final Map<int, Set<CallResult>> _registeredCallResults = {};
  static final Pointer<CallbackMsg> _cbm = malloc.call<CallbackMsg>();

  /// Current steam pipe
  static late HSteamPipe pipe;

  // /// A callback for printing logs for the received callback.
  // /// Don't use this other than debugging purposes
  // static void Function(List<dynamic> arguments)? debugPrint;

  /// Initializes [Dispatcher]
  static void init({
    required HSteamPipe pipe,
    // void Function(List<dynamic> arguments)? debugPrint,
  }) {
    Dispatcher.pipe = pipe;
    // Dispatcher.debugPrint = debugPrint;

    Dispatch.init();
  }

  /// Registers a [Callback]
  static void registerCallback(
    Callback callback,
  ) {
    Set<Callback> callResultList = _registeredCallbacks[callback.id] ??= {};
    callResultList.add(callback);
  }

  /// Registers a [CallResult]
  static void registerCallResult(
    CallResult callResult,
  ) {
    Set<CallResult> callResultList =
        _registeredCallResults[callResult.asyncCallId] ??= {};
    callResultList.add(callResult);
  }

  /// Unregisters a [Callback]
  static void unregisterCallback(
    Callback callback,
  ) {
    Set<Callback>? callResultList = _registeredCallbacks[callback.id];
    callResultList?.remove(callback);
  }

  /// Unregisters a [CallResult]
  static void unregisterCallResult(
    CallResult callResult,
  ) {
    Set<CallResult>? callResultList =
        _registeredCallResults[callResult.asyncCallId];
    callResultList?.remove(callResult);
  }

  /// This function has to be called in short periods
  /// to run callbacks
  static Future<void> runFrame() async {
    Dispatch.runFrame(pipe);

    while (Dispatch.getNextCallback(pipe, _cbm)) {
      try {
        if (_cbm.callback == SteamApiCallCompleted.callbackId) {
          Pointer<SteamApiCallCompleted> sacc =
              _cbm.paramPtr.cast<SteamApiCallCompleted>();
          Pointer<Void> tmpCallResult = malloc.allocate<Void>(sacc.paramSize);
          Pointer<Bool> hasFailed = malloc.call<Bool>();
          bool hasResult = Dispatch.getApiCallResult(
            pipe,
            sacc.asyncCall,
            tmpCallResult,
            sacc.paramSize,
            sacc.callback,
            hasFailed,
          );

          Set<CallResult>? crSet = _registeredCallResults[sacc.asyncCall];

          if (crSet == null || crSet.isEmpty) {
            log(
              "CallResult request has been made but there was no callback registered for it. CallbackId: ${sacc.callback} CallId: ${sacc.asyncCall}",
              time: DateTime.now(),
              level: 900, // warning
              name: "Dispatcher",
            );
            continue;
          }

          if (!hasResult || hasFailed.value) {
            log(
              "CallResult failed. CallbackId: ${sacc.callback} CallId: ${sacc.asyncCall}",
              time: DateTime.now(),
              level: 900, // warning
              name: "Dispatcher",
            );
            crSet.clear();
            continue;
          }

          for (CallResult cr in crSet) {
            if (cr.callbackId != sacc.callback) {
              log(
                "CallbackId of the Registered CallResult does not match the response from steam",
                time: DateTime.now(),
                level: 900, // warning
                name: "Dispatcher",
              );
              continue;
            }

            cr.onCb(
              data: tmpCallResult,
              hasFailed: hasFailed.value,
            );
          }

          crSet.clear();

          malloc.free(tmpCallResult);
          malloc.free(hasFailed);
        } else {
          Set<Callback>? cbSet = _registeredCallbacks[_cbm.callback];
          if (cbSet == null || cbSet.isEmpty) {
            log(
              "Callback request has been made but there were no callback registered for it. CallbackId: ${_cbm.callback}",
              time: DateTime.now(),
              level: 900, // warning
              name: "Dispatcher",
            );
            continue;
          }

          for (Callback cr in cbSet) {
            cr.onCb(
              data: _cbm.paramPtr,
            );
          }
        }
      } on Exception catch (e, stackTrace) {
        log(
          "An error occured while running callback/callresult(s). Message: ${e.toString()}",
          time: DateTime.now(),
          level: 1000, // severe
          name: "Dispatcher",
          stackTrace: stackTrace,
        );
      } finally {
        Dispatch.freeLastCallback(pipe);
      }
    }
  }
}
