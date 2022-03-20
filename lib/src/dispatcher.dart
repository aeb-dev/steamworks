import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'generated/callback_structs/steam_api_call_completed.dart';
import 'generated/global_interfaces/dispatch.dart';
import 'generated/global_interfaces/steam_api.dart';
import 'generated/structs/callback_msg.dart';
import 'generated/enums/callback_id.dart';
import 'generated/typedefs.dart';

class Dispatcher {
  Map<int, List<CallbackMsg>> registeredCallbacks = {};
  Map<int, List<CallbackMsg>> registeredCallResults = {};
  static final Pointer<CallbackMsg> cbm = malloc.call<CallbackMsg>();
  static bool isServer = false;

  static void init({bool isServer = false}) {
    Dispatch.init();
    Dispatcher.isServer = isServer;
  }

  static void runFrame() {
    HSteamPipe pipe = SteamApi.getHSteamPipe(); // TODO: game server
    Dispatch.runFrame(pipe);
    bool hasCallback = Dispatch.getNextCallback(pipe, cbm);

    while (hasCallback) {
      print(cbm.ref.steamUser);
      print(cbm.ref.paramSize);
      print(cbm.ref.callback.toUnsigned(24));
      if (cbm.ref.callback == CallbackIdEnum.steamApiCallCompleted) {
        Pointer<SteamApiCallCompleted> sacc = cbm.cast<SteamApiCallCompleted>();
        Pointer<Void> tmpCallResult = malloc.call<Void>(sacc.ref.paramSize);
        Pointer<Bool> hasFailed = malloc.call<Bool>();
        bool hasResult = Dispatch.getApiCallResult(
          pipe,
          sacc.ref.asyncCall,
          tmpCallResult,
          sacc.ref.paramSize,
          sacc.ref.callback,
          hasFailed,
        );
        if (hasResult) {
          // TODO: do your thing for call result
        }
        malloc.free(hasFailed);
      } else {
        // TODO: do your thing for callback
      }
      Dispatch.freeLastCallback(pipe);
      hasCallback = Dispatch.getNextCallback(pipe, cbm);
    }
  }
}
