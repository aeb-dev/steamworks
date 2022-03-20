import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_steam_device_form_factor.dart";
import "../typedefs.dart";

final _steamRemotePlay = dl.lookupFunction<Pointer<SteamRemotePlay> Function(),
    Pointer<SteamRemotePlay> Function()>("SteamAPI_SteamRemotePlay_v001");

class SteamRemotePlay extends Opaque {
  static Pointer<SteamRemotePlay> get userInstance => _steamRemotePlay();
}

final _getSessionCount = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamRemotePlay>,
),
    int Function(
  Pointer<SteamRemotePlay>,
)>("SteamAPI_ISteamRemotePlay_GetSessionCount");

final _getSessionId = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamRemotePlay>,
  Int,
),
    RemotePlaySessionId Function(
  Pointer<SteamRemotePlay>,
  int,
)>("SteamAPI_ISteamRemotePlay_GetSessionID");

final _getSessionSteamId = dl.lookupFunction<
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

  RemotePlaySessionId getSessionId(
    int iSessionIndex,
  ) =>
      _getSessionId.call(
        this,
        iSessionIndex,
      );

  CSteamId getSessionSteamId(
    RemotePlaySessionId sessionId,
  ) =>
      _getSessionSteamId.call(
        this,
        sessionId,
      );

  Pointer<Utf8> getSessionClientName(
    RemotePlaySessionId sessionId,
  ) =>
      _getSessionClientName.call(
        this,
        sessionId,
      );

  ESteamDeviceFormFactor getSessionClientFormFactor(
    RemotePlaySessionId sessionId,
  ) =>
      _getSessionClientFormFactor.call(
        this,
        sessionId,
      );

  bool bGetSessionClientResolution(
    RemotePlaySessionId sessionId,
    Pointer<Int> pnResolutionX,
    Pointer<Int> pnResolutionY,
  ) =>
      _bGetSessionClientResolution.call(
        this,
        sessionId,
        pnResolutionX,
        pnResolutionY,
      );

  bool bSendRemotePlayTogetherInvite(
    CSteamId steamIdFriend,
  ) =>
      _bSendRemotePlayTogetherInvite.call(
        this,
        steamIdFriend,
      );
}
