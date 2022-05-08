import "dart:developer";
import "dart:ffi";

import "package:ffi/ffi.dart";

import "call_result.dart";
import "callback.dart";
import "generated/generated.dart";

/// A dispatcher for asynchrouns events
class Dispatcher {
  static Dispatcher? _instance;

  /// Initalized instance of the [Dispatcher]
  /// Do not access this before calling [init]
  static Dispatcher get instance => _instance!;

  /// Initalizes the [Dispatcher]. Calling [init]
  /// multiple time is noop
  static void init({
    required HSteamPipe pipe,
  }) {
    if (_instance != null) {
      return;
    }

    Dispatch.init();

    _instance ??= Dispatcher._(
      pipe: pipe,
    );
  }

  Dispatcher._({
    required this.pipe,
    // this.debugPrint,
  });

  final Map<int, Set<Callback>> _registeredCallbacks = {};
  final Map<int, Set<CallResult>> _registeredCallResults = {};
  final Pointer<CallbackMsg> _cbm = malloc.call<CallbackMsg>();

  /// Current steam pipe
  late HSteamPipe pipe;

  // /// A callback for printing logs for the received callback.
  // /// Don't use this other than debugging purposes
  // void Function(List<dynamic> arguments)? debugPrint;

  /// Registers a [Callback]
  Callback<T> registerCallback<T extends NativeType>({
    required void Function(Pointer<T> data) cb,
  }) {
    Callback<T> callback = Callback<T>(
      cb: cb,
    );

    Set<Callback> callResultList = _registeredCallbacks[callback.id] ??= {};
    callResultList.add(callback);

    return callback;
  }

  /// Registers a [CallResult]
  CallResult<T> registerCallResult<T extends NativeType>({
    required SteamApiCall asyncCallId,
    required void Function(Pointer<T> data, bool hasFailed) cb,
  }) {
    CallResult<T> callResult = CallResult<T>(
      asyncCallId: asyncCallId,
      cb: cb,
    );

    Set<CallResult> callResultList =
        _registeredCallResults[callResult.asyncCallId] ??= {};
    callResultList.add(callResult);

    return callResult;
  }

  /// Unregisters a [Callback]
  void unregisterCallback({
    required Callback callback,
  }) {
    Set<Callback>? callResultList = _registeredCallbacks[callback.id];
    callResultList?.remove(callback);
  }

  /// Unregisters a [CallResult]
  void unregisterCallResult({
    required CallResult callResult,
  }) {
    Set<CallResult>? callResultList =
        _registeredCallResults[callResult.asyncCallId];
    callResultList?.remove(callResult);
  }

  /// This function has to be called in short periods
  /// to run callbacks
  Future<void> runFrame() async {
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
