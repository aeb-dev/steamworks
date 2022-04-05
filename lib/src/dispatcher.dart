import "dart:ffi";

import "package:ffi/ffi.dart";

import "call_result.dart";
import "callback.dart";
import "generated/callback_structs/steam_api_call_completed.dart";
import "generated/initializers/dispatch.dart";
import "generated/structs/callback_msg.dart";
import "generated/typedefs.dart";

class Dispatcher {
  static final Map<int, Set<Callback>> _registeredCallbacks = {};
  static final Map<int, Set<CallResult>> _registeredCallResults = {};
  static final Pointer<CallbackMsg> cbm = malloc.call<CallbackMsg>();
  static late HSteamPipe pipe;

  static void init({
    required HSteamPipe pipe,
  }) {
    Dispatcher.pipe = pipe;

    Dispatch.init();
  }

  static void registerCallback(
    Callback callback,
  ) {
    Set<Callback> callResultList = _registeredCallbacks[callback.id] ??= {};
    callResultList.add(callback);
  }

  static void registerCallResult(
    CallResult callResult,
  ) {
    Set<CallResult> callResultList =
        _registeredCallResults[callResult.callId] ??= {};
    callResultList.add(callResult);
  }

  static void unregisterCallback(
    Callback callback,
  ) {
    Set<Callback>? callResultList = _registeredCallbacks[callback.id];
    callResultList?.remove(callback);
  }

  static void unregisterCallResult(
    CallResult callResult,
  ) {
    Set<CallResult>? callResultList = _registeredCallResults[callResult.callId];
    callResultList?.remove(callResult);
  }

  static Future<void> runFrame() async {
    Dispatch.runFrame(pipe);

    while (Dispatch.getNextCallback(pipe, cbm)) {
      try {
        if (cbm.callback == SteamApiCallCompleted.callbackId) {
          Pointer<SteamApiCallCompleted> sacc =
              cbm.paramPtr.cast<SteamApiCallCompleted>();
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

          if (!hasResult || hasFailed.value) {
            // TODO warn that getting result has failed
            continue;
          }

          Set<CallResult>? crSet = _registeredCallResults[sacc.asyncCall];

          if (crSet == null || crSet.isEmpty) {
            // TODO: warn that no callback is registered but a request has been made
            continue;
          }

          for (CallResult cr in crSet) {
            if (cr.callbackId != sacc.callback) {
              // TODO: warn that callback id and T of the CallResult does not match
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
          Set<Callback>? cbSet = _registeredCallbacks[cbm.callback];
          if (cbSet == null || cbSet.isEmpty) {
            // TODO: warn that no callback is registered but a request has been made
            continue;
          }

          for (Callback cr in cbSet) {
            cr.onCb(
              data: cbm.paramPtr,
            );
          }
        }
      } on Exception catch (e) {
        // TODO log
      } finally {
        Dispatch.freeLastCallback(pipe);
      }
    }
  }
}
