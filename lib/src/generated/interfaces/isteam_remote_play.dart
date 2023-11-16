// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_device_form_factor.dart";
import "../typedefs.dart";

final _steamRemotePlay = dl.lookupFunction<Pointer<ISteamRemotePlay> Function(),
    Pointer<ISteamRemotePlay> Function()>("SteamAPI_SteamRemotePlay_v002");

final class ISteamRemotePlay extends Opaque {
  static Pointer<ISteamRemotePlay> get userInstance => _steamRemotePlay();
}

final _getSessionCount = dl.lookupFunction<
    UnsignedInt Function(
      Pointer<ISteamRemotePlay>,
    ),
    int Function(
      Pointer<ISteamRemotePlay>,
    )>("SteamAPI_ISteamRemotePlay_GetSessionCount");

final _getSessionId = dl.lookupFunction<
    UnsignedInt Function(
      Pointer<ISteamRemotePlay>,
      Int,
    ),
    RemotePlaySessionId Function(
      Pointer<ISteamRemotePlay>,
      int,
    )>("SteamAPI_ISteamRemotePlay_GetSessionID");

final _getSessionSteamId = dl.lookupFunction<
    UnsignedLongLong Function(
      Pointer<ISteamRemotePlay>,
      UnsignedInt,
    ),
    CSteamId Function(
      Pointer<ISteamRemotePlay>,
      RemotePlaySessionId,
    )>("SteamAPI_ISteamRemotePlay_GetSessionSteamID");

final _getSessionClientName = dl.lookupFunction<
    Pointer<Utf8> Function(
      Pointer<ISteamRemotePlay>,
      UnsignedInt,
    ),
    Pointer<Utf8> Function(
      Pointer<ISteamRemotePlay>,
      RemotePlaySessionId,
    )>("SteamAPI_ISteamRemotePlay_GetSessionClientName");

final _getSessionClientFormFactor = dl.lookupFunction<
    ESteamDeviceFormFactorAliasC Function(
      Pointer<ISteamRemotePlay>,
      UnsignedInt,
    ),
    ESteamDeviceFormFactorAliasDart Function(
      Pointer<ISteamRemotePlay>,
      RemotePlaySessionId,
    )>("SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor");

final _bGetSessionClientResolution = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamRemotePlay>,
      UnsignedInt,
      Pointer<Int>,
      Pointer<Int>,
    ),
    bool Function(
      Pointer<ISteamRemotePlay>,
      RemotePlaySessionId,
      Pointer<Int>,
      Pointer<Int>,
    )>("SteamAPI_ISteamRemotePlay_BGetSessionClientResolution");

final _bStartRemotePlayTogether = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamRemotePlay>,
      Bool,
    ),
    bool Function(
      Pointer<ISteamRemotePlay>,
      bool,
    )>("SteamAPI_ISteamRemotePlay_BStartRemotePlayTogether");

final _bSendRemotePlayTogetherInvite = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamRemotePlay>,
      UnsignedLongLong,
    ),
    bool Function(
      Pointer<ISteamRemotePlay>,
      CSteamId,
    )>("SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite");

extension ISteamRemotePlayExtensions on Pointer<ISteamRemotePlay> {
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
      ESteamDeviceFormFactor.fromValue(
        _getSessionClientFormFactor.call(
          this,
          sessionId,
        ),
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

  bool bStartRemotePlayTogether(
    bool showOverlay,
  ) =>
      _bStartRemotePlayTogether.call(
        this,
        showOverlay,
      );

  bool bSendRemotePlayTogetherInvite(
    CSteamId steamIdFriend,
  ) =>
      _bSendRemotePlayTogetherInvite.call(
        this,
        steamIdFriend,
      );
}
