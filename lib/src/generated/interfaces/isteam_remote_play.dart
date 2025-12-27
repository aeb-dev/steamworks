// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_device_form_factor.dart";
import "../structs/remote_play_input.dart";
import "../typedefs.dart";

final _steamRemotePlay = dl.lookupFunction<Pointer<ISteamRemotePlay> Function(),
    Pointer<ISteamRemotePlay> Function()>("SteamAPI_SteamRemotePlay_v003");

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

final _showRemotePlayTogetherUI = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamRemotePlay>,
    ),
    bool Function(
      Pointer<ISteamRemotePlay>,
    )>("SteamAPI_ISteamRemotePlay_ShowRemotePlayTogetherUI");

final _bSendRemotePlayTogetherInvite = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamRemotePlay>,
      UnsignedLongLong,
    ),
    bool Function(
      Pointer<ISteamRemotePlay>,
      CSteamId,
    )>("SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite");

final _bEnableRemotePlayTogetherDirectInput = dl.lookupFunction<
    Bool Function(
      Pointer<ISteamRemotePlay>,
    ),
    bool Function(
      Pointer<ISteamRemotePlay>,
    )>("SteamAPI_ISteamRemotePlay_BEnableRemotePlayTogetherDirectInput");

final _disableRemotePlayTogetherDirectInput = dl.lookupFunction<
    Void Function(
      Pointer<ISteamRemotePlay>,
    ),
    void Function(
      Pointer<ISteamRemotePlay>,
    )>("SteamAPI_ISteamRemotePlay_DisableRemotePlayTogetherDirectInput");

final _getInput = dl.lookupFunction<
    UnsignedInt Function(
      Pointer<ISteamRemotePlay>,
      Pointer<RemotePlayInput>,
      UnsignedInt,
    ),
    int Function(
      Pointer<ISteamRemotePlay>,
      Pointer<RemotePlayInput>,
      int,
    )>("SteamAPI_ISteamRemotePlay_GetInput");

final _setMouseVisibility = dl.lookupFunction<
    Void Function(
      Pointer<ISteamRemotePlay>,
      UnsignedInt,
      Bool,
    ),
    void Function(
      Pointer<ISteamRemotePlay>,
      RemotePlaySessionId,
      bool,
    )>("SteamAPI_ISteamRemotePlay_SetMouseVisibility");

final _setMousePosition = dl.lookupFunction<
    Void Function(
      Pointer<ISteamRemotePlay>,
      UnsignedInt,
      Float,
      Float,
    ),
    void Function(
      Pointer<ISteamRemotePlay>,
      RemotePlaySessionId,
      double,
      double,
    )>("SteamAPI_ISteamRemotePlay_SetMousePosition");

final _createMouseCursor = dl.lookupFunction<
    UnsignedInt Function(
      Pointer<ISteamRemotePlay>,
      Int,
      Int,
      Int,
      Int,
      Pointer<Void>,
      Int,
    ),
    RemotePlayCursorId Function(
      Pointer<ISteamRemotePlay>,
      int,
      int,
      int,
      int,
      Pointer<Void>,
      int,
    )>("SteamAPI_ISteamRemotePlay_CreateMouseCursor");

final _setMouseCursor = dl.lookupFunction<
    Void Function(
      Pointer<ISteamRemotePlay>,
      UnsignedInt,
      UnsignedInt,
    ),
    void Function(
      Pointer<ISteamRemotePlay>,
      RemotePlaySessionId,
      RemotePlayCursorId,
    )>("SteamAPI_ISteamRemotePlay_SetMouseCursor");

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

  bool showRemotePlayTogetherUI() => _showRemotePlayTogetherUI.call(
        this,
      );

  bool bSendRemotePlayTogetherInvite(
    CSteamId steamIdFriend,
  ) =>
      _bSendRemotePlayTogetherInvite.call(
        this,
        steamIdFriend,
      );

  bool bEnableRemotePlayTogetherDirectInput() =>
      _bEnableRemotePlayTogetherDirectInput.call(
        this,
      );

  void disableRemotePlayTogetherDirectInput() =>
      _disableRemotePlayTogetherDirectInput.call(
        this,
      );

  int getInput(
    Pointer<RemotePlayInput> pInput,
    int maxEvents,
  ) =>
      _getInput.call(
        this,
        pInput,
        maxEvents,
      );

  void setMouseVisibility(
    RemotePlaySessionId sessionId,
    bool visible,
  ) =>
      _setMouseVisibility.call(
        this,
        sessionId,
        visible,
      );

  void setMousePosition(
    RemotePlaySessionId sessionId,
    double normalizedX,
    double normalizedY,
  ) =>
      _setMousePosition.call(
        this,
        sessionId,
        normalizedX,
        normalizedY,
      );

  RemotePlayCursorId createMouseCursor(
    int nWidth,
    int nHeight,
    int nHotX,
    int nHotY,
    Pointer<Void> pBGRA,
    int nPitch,
  ) =>
      _createMouseCursor.call(
        this,
        nWidth,
        nHeight,
        nHotX,
        nHotY,
        pBGRA,
        nPitch,
      );

  void setMouseCursor(
    RemotePlaySessionId sessionId,
    RemotePlayCursorId cursorId,
  ) =>
      _setMouseCursor.call(
        this,
        sessionId,
        cursorId,
      );
}
