// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_api_init_result.dart";
import "../typedefs.dart";

final _initFlat = dl.lookupFunction<
    ESteamApiInitResultAliasC Function(
      Pointer<Utf8>,
    ),
    ESteamApiInitResultAliasDart Function(
      Pointer<Utf8>,
    )>("SteamAPI_InitFlat");

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
  static ESteamApiInitResult initFlat(
    Pointer<Utf8> outErrorMessage,
  ) =>
      ESteamApiInitResult.fromValue(
        _initFlat.call(
          outErrorMessage,
        ),
      );

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
