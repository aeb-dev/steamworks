// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

final _init =
    dl.lookupFunction<Bool Function(), bool Function()>("SteamAPI_Init");

final _releaseCurrentThreadMemory =
    dl.lookupFunction<Void Function(), void Function()>(
  "SteamAPI_ReleaseCurrentThreadMemory",
);

final _restartAppIfNecessary = dl.lookupFunction<
    Bool Function(
  UnsignedInt,
),
    bool Function(
  int,
)>("SteamAPI_RestartAppIfNecessary");

final _shutdown =
    dl.lookupFunction<Void Function(), void Function()>("SteamAPI_Shutdown");

final _getHSteamPipe = dl.lookupFunction<Int Function(), HSteamPipe Function()>(
  "SteamAPI_GetHSteamPipe",
);

final _getHSteamUser = dl.lookupFunction<Int Function(), HSteamUser Function()>(
  "SteamAPI_GetHSteamUser",
);

class SteamApi {
  static bool init() => _init.call();

  static void releaseCurrentThreadMemory() =>
      _releaseCurrentThreadMemory.call();

  static bool restartAppIfNecessary(
    int ownAppId,
  ) =>
      _restartAppIfNecessary.call(
        ownAppId,
      );

  static void shutdown() => _shutdown.call();

  static HSteamPipe getHSteamPipe() => _getHSteamPipe.call();

  static HSteamUser getHSteamUser() => _getHSteamUser.call();
}
