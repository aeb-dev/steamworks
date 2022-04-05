// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../structs/callback_msg.dart";
import "../typedefs.dart";

final _init = dl.lookupFunction<Void Function(), void Function()>(
  "SteamAPI_ManualDispatch_Init",
);

final _runFrame = dl.lookupFunction<
    Void Function(
  Int,
),
    void Function(
  HSteamPipe,
)>("SteamAPI_ManualDispatch_RunFrame");

final _getNextCallback = dl.lookupFunction<
    Bool Function(
  Int,
  Pointer<CallbackMsg>,
),
    bool Function(
  HSteamPipe,
  Pointer<CallbackMsg>,
)>("SteamAPI_ManualDispatch_GetNextCallback");

final _freeLastCallback = dl.lookupFunction<
    Void Function(
  Int,
),
    void Function(
  HSteamPipe,
)>("SteamAPI_ManualDispatch_FreeLastCallback");

final _getApiCallResult = dl.lookupFunction<
    Bool Function(
  Int,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
  Int,
  Pointer<Bool>,
),
    bool Function(
  HSteamPipe,
  SteamApiCall,
  Pointer<Void>,
  int,
  int,
  Pointer<Bool>,
)>("SteamAPI_ManualDispatch_GetAPICallResult");

class Dispatch {
  static void init() => _init.call();

  static void runFrame(
    HSteamPipe hSteamPipe,
  ) =>
      _runFrame.call(
        hSteamPipe,
      );

  static bool getNextCallback(
    HSteamPipe hSteamPipe,
    Pointer<CallbackMsg> pCallbackMsg,
  ) =>
      _getNextCallback.call(
        hSteamPipe,
        pCallbackMsg,
      );

  static void freeLastCallback(
    HSteamPipe hSteamPipe,
  ) =>
      _freeLastCallback.call(
        hSteamPipe,
      );

  static bool getApiCallResult(
    HSteamPipe hSteamPipe,
    SteamApiCall hSteamApiCall,
    Pointer<Void> pCallback,
    int cubCallback,
    int iCallbackExpected,
    Pointer<Bool> pbFailed,
  ) =>
      _getApiCallResult.call(
        hSteamPipe,
        hSteamApiCall,
        pCallback,
        cubCallback,
        iCallbackExpected,
        pbFailed,
      );
}
