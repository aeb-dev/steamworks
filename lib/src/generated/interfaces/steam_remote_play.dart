import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_steam_device_form_factor.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamRemotePlay extends Opaque {
  static Pointer<SteamRemotePlay> steamRemotePlay() => nullptr;
}

final _getSessionCount = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamRemotePlay>,
),
    int Function(
  Pointer<SteamRemotePlay>,
)>("SteamAPI_ISteamRemotePlay_GetSessionCount");

final _getSessionID = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamRemotePlay>,
  Int,
),
    RemotePlaySessionId Function(
  Pointer<SteamRemotePlay>,
  int,
)>("SteamAPI_ISteamRemotePlay_GetSessionID");

final _getSessionSteamID = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemotePlay>,
  UnsignedInt,
),
    CSteamId Function(
  Pointer<SteamRemotePlay>,
  RemotePlaySessionId,
)>("SteamAPI_ISteamRemotePlay_GetSessionSteamID");

final _getSessionClientName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamRemotePlay>,
  UnsignedInt,
),
    Pointer<Utf8> Function(
  Pointer<SteamRemotePlay>,
  RemotePlaySessionId,
)>("SteamAPI_ISteamRemotePlay_GetSessionClientName");

final _getSessionClientFormFactor = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamRemotePlay>,
  UnsignedInt,
),
    ESteamDeviceFormFactor Function(
  Pointer<SteamRemotePlay>,
  RemotePlaySessionId,
)>("SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor");

final _bGetSessionClientResolution = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemotePlay>,
  UnsignedInt,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamRemotePlay>,
  RemotePlaySessionId,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamRemotePlay_BGetSessionClientResolution");

final _bSendRemotePlayTogetherInvite = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemotePlay>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamRemotePlay>,
  CSteamId,
)>("SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite");

extension SteamRemotePlayExtensions on Pointer<SteamRemotePlay> {
  int getSessionCount() => _getSessionCount.call(
        this,
      );

  RemotePlaySessionId getSessionID(
    int iSessionIndex,
  ) =>
      _getSessionID.call(
        this,
        iSessionIndex,
      );

  CSteamId getSessionSteamID(
    RemotePlaySessionId unSessionID,
  ) =>
      _getSessionSteamID.call(
        this,
        unSessionID,
      );

  Pointer<Utf8> getSessionClientName(
    RemotePlaySessionId unSessionID,
  ) =>
      _getSessionClientName.call(
        this,
        unSessionID,
      );

  ESteamDeviceFormFactor getSessionClientFormFactor(
    RemotePlaySessionId unSessionID,
  ) =>
      _getSessionClientFormFactor.call(
        this,
        unSessionID,
      );

  bool bGetSessionClientResolution(
    RemotePlaySessionId unSessionID,
    Pointer<Int> pnResolutionX,
    Pointer<Int> pnResolutionY,
  ) =>
      _bGetSessionClientResolution.call(
        this,
        unSessionID,
        pnResolutionX,
        pnResolutionY,
      );

  bool bSendRemotePlayTogetherInvite(
    CSteamId steamIDFriend,
  ) =>
      _bSendRemotePlayTogetherInvite.call(
        this,
        steamIDFriend,
      );
}
