// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eserver_mode.dart";
import "../typedefs.dart";

final _init = dl.lookupFunction<
    Bool Function(
      UnsignedInt,
      UnsignedShort,
      UnsignedShort,
      UnsignedShort,
      EServerModeAliasC,
      Pointer<Utf8>,
    ),
    bool Function(
      int,
      int,
      int,
      int,
      EServerModeAliasDart,
      Pointer<Utf8>,
    )>("SteamGameServer_Init");

final _releaseCurrentThreadMemory =
    dl.lookupFunction<Void Function(), void Function()>(
  "SteamGameServer_ReleaseCurrentThreadMemory",
);

final _shutdown = dl.lookupFunction<Void Function(), void Function()>(
  "SteamGameServer_Shutdown",
);

final _getHSteamPipe = dl.lookupFunction<Int Function(), HSteamPipe Function()>(
  "SteamGameServer_GetHSteamPipe",
);

final _getHSteamUser = dl.lookupFunction<Int Function(), HSteamUser Function()>(
  "SteamGameServer_GetHSteamUser",
);

class SteamGameServer {
  static bool init(
    int ip,
    int steamPort,
    int gamePort,
    int queryPort,
    EServerMode serverMode,
    Pointer<Utf8> versionString,
  ) =>
      _init.call(
        ip,
        steamPort,
        gamePort,
        queryPort,
        serverMode.value,
        versionString,
      );

  static void releaseCurrentThreadMemory() =>
      _releaseCurrentThreadMemory.call();

  static void shutdown() => _shutdown.call();

  static HSteamPipe getHSteamPipe() => _getHSteamPipe.call();

  static HSteamUser getHSteamUser() => _getHSteamUser.call();
}
