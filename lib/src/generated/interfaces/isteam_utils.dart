// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/efloating_gamepad_text_input_mode.dart";
import "../enums/egamepad_text_input_line_mode.dart";
import "../enums/egamepad_text_input_mode.dart";
import "../enums/enotification_position.dart";
import "../enums/esteam_api_call_failure.dart";
import "../enums/esteam_ipv6_connectivity_protocol.dart";
import "../enums/esteam_ipv6_connectivity_state.dart";
import "../enums/etext_filtering_context.dart";
import "../enums/euniverse.dart";
import "../typedefs.dart";

final _steamUtils = dl.lookupFunction<Pointer<ISteamUtils> Function(),
    Pointer<ISteamUtils> Function()>("SteamAPI_SteamUtils_v010");

final _steamGameServerUtils = dl.lookupFunction<Pointer<ISteamUtils> Function(),
    Pointer<ISteamUtils> Function()>("SteamAPI_SteamGameServerUtils_v010");

class ISteamUtils extends Opaque {
  static Pointer<ISteamUtils> get userInstance => _steamUtils();

  static Pointer<ISteamUtils> get serverInstance => _steamGameServerUtils();
}

final _getSecondsSinceAppActive = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUtils>,
),
    int Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetSecondsSinceAppActive");

final _getSecondsSinceComputerActive = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUtils>,
),
    int Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetSecondsSinceComputerActive");

final _getConnectedUniverse = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamUtils>,
),
    EUniverse Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetConnectedUniverse");

final _getServerRealTime = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUtils>,
),
    int Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetServerRealTime");

final _getIpcountry = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamUtils>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetIPCountry");

final _getImageSize = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  Int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamUtils>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUtils_GetImageSize");

final _getImageRGBA = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  Int,
  Pointer<UnsignedChar>,
  Int,
),
    bool Function(
  Pointer<ISteamUtils>,
  int,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamUtils_GetImageRGBA");

final _getCurrentBatteryPower = dl.lookupFunction<
    UnsignedChar Function(
  Pointer<ISteamUtils>,
),
    int Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetCurrentBatteryPower");

final _getAppId = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUtils>,
),
    int Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetAppID");

final _setOverlayNotificationPosition = dl.lookupFunction<
    Void Function(
  Pointer<ISteamUtils>,
  Int32,
),
    void Function(
  Pointer<ISteamUtils>,
  ENotificationPosition,
)>("SteamAPI_ISteamUtils_SetOverlayNotificationPosition");

final _isApiCallCompleted = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  UnsignedLongLong,
  Pointer<Bool>,
),
    bool Function(
  Pointer<ISteamUtils>,
  SteamApiCall,
  Pointer<Bool>,
)>("SteamAPI_ISteamUtils_IsAPICallCompleted");

final _getApiCallFailureReason = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamUtils>,
  UnsignedLongLong,
),
    ESteamApiCallFailure Function(
  Pointer<ISteamUtils>,
  SteamApiCall,
)>("SteamAPI_ISteamUtils_GetAPICallFailureReason");

final _getApiCallResult = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
  Int,
  Pointer<Bool>,
),
    bool Function(
  Pointer<ISteamUtils>,
  SteamApiCall,
  Pointer<Void>,
  int,
  int,
  Pointer<Bool>,
)>("SteamAPI_ISteamUtils_GetAPICallResult");

final _getIpcCallCount = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUtils>,
),
    int Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetIPCCallCount");

final _isOverlayEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_IsOverlayEnabled");

final _bOverlayNeedsPresent = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_BOverlayNeedsPresent");

final _checkFileSignature = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUtils>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamUtils>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUtils_CheckFileSignature");

final _showGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  Int32,
  Int32,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUtils>,
  EGamepadTextInputMode,
  EGamepadTextInputLineMode,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUtils_ShowGamepadTextInput");

final _getEnteredGamepadTextLength = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUtils>,
),
    int Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetEnteredGamepadTextLength");

final _getEnteredGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUtils>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUtils_GetEnteredGamepadTextInput");

final _getSteamUILanguage = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamUtils>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_GetSteamUILanguage");

final _isSteamRunningInVr = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamRunningInVR");

final _setOverlayNotificationInset = dl.lookupFunction<
    Void Function(
  Pointer<ISteamUtils>,
  Int,
  Int,
),
    void Function(
  Pointer<ISteamUtils>,
  int,
  int,
)>("SteamAPI_ISteamUtils_SetOverlayNotificationInset");

final _isSteamInBigPictureMode = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamInBigPictureMode");

final _startVrDashboard = dl.lookupFunction<
    Void Function(
  Pointer<ISteamUtils>,
),
    void Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_StartVRDashboard");

final _isVrHeadsetStreamingEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled");

final _setVrHeadsetStreamingEnabled = dl.lookupFunction<
    Void Function(
  Pointer<ISteamUtils>,
  Bool,
),
    void Function(
  Pointer<ISteamUtils>,
  bool,
)>("SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled");

final _isSteamChinaLauncher = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamChinaLauncher");

final _initFilterText = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUtils>,
  int,
)>("SteamAPI_ISteamUtils_InitFilterText");

final _filterText = dl.lookupFunction<
    Int Function(
  Pointer<ISteamUtils>,
  Int32,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamUtils>,
  ETextFilteringContext,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUtils_FilterText");

final _getIpv6ConnectivityState = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamUtils>,
  Int32,
),
    ESteamIpv6ConnectivityState Function(
  Pointer<ISteamUtils>,
  ESteamIpv6ConnectivityProtocol,
)>("SteamAPI_ISteamUtils_GetIPv6ConnectivityState");

final _isSteamRunningOnSteamDeck = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck");

final _showFloatingGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
  Int32,
  Int,
  Int,
  Int,
  Int,
),
    bool Function(
  Pointer<ISteamUtils>,
  EFloatingGamepadTextInputMode,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput");

final _setGameLauncherMode = dl.lookupFunction<
    Void Function(
  Pointer<ISteamUtils>,
  Bool,
),
    void Function(
  Pointer<ISteamUtils>,
  bool,
)>("SteamAPI_ISteamUtils_SetGameLauncherMode");

final _dismissFloatingGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUtils>,
),
    bool Function(
  Pointer<ISteamUtils>,
)>("SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput");

extension ISteamUtilsExtensions on Pointer<ISteamUtils> {
  int getSecondsSinceAppActive() => _getSecondsSinceAppActive.call(
        this,
      );

  int getSecondsSinceComputerActive() => _getSecondsSinceComputerActive.call(
        this,
      );

  EUniverse getConnectedUniverse() => _getConnectedUniverse.call(
        this,
      );

  int getServerRealTime() => _getServerRealTime.call(
        this,
      );

  Pointer<Utf8> getIpcountry() => _getIpcountry.call(
        this,
      );

  bool getImageSize(
    int iImage,
    Pointer<UnsignedInt> pnWidth,
    Pointer<UnsignedInt> pnHeight,
  ) =>
      _getImageSize.call(
        this,
        iImage,
        pnWidth,
        pnHeight,
      );

  bool getImageRGBA(
    int iImage,
    Pointer<UnsignedChar> pubDest,
    int nDestBufferSize,
  ) =>
      _getImageRGBA.call(
        this,
        iImage,
        pubDest,
        nDestBufferSize,
      );

  int getCurrentBatteryPower() => _getCurrentBatteryPower.call(
        this,
      );

  int getAppId() => _getAppId.call(
        this,
      );

  void setOverlayNotificationPosition(
    ENotificationPosition notificationPosition,
  ) =>
      _setOverlayNotificationPosition.call(
        this,
        notificationPosition,
      );

  bool isApiCallCompleted(
    SteamApiCall hSteamApiCall,
    Pointer<Bool> pbFailed,
  ) =>
      _isApiCallCompleted.call(
        this,
        hSteamApiCall,
        pbFailed,
      );

  ESteamApiCallFailure getApiCallFailureReason(
    SteamApiCall hSteamApiCall,
  ) =>
      _getApiCallFailureReason.call(
        this,
        hSteamApiCall,
      );

  bool getApiCallResult(
    SteamApiCall hSteamApiCall,
    Pointer<Void> pCallback,
    int cubCallback,
    int iCallbackExpected,
    Pointer<Bool> pbFailed,
  ) =>
      _getApiCallResult.call(
        this,
        hSteamApiCall,
        pCallback,
        cubCallback,
        iCallbackExpected,
        pbFailed,
      );

  int getIpcCallCount() => _getIpcCallCount.call(
        this,
      );

  bool isOverlayEnabled() => _isOverlayEnabled.call(
        this,
      );

  bool bOverlayNeedsPresent() => _bOverlayNeedsPresent.call(
        this,
      );

  SteamApiCall checkFileSignature(
    Pointer<Utf8> szFileName,
  ) =>
      _checkFileSignature.call(
        this,
        szFileName,
      );

  bool showGamepadTextInput(
    EGamepadTextInputMode inputMode,
    EGamepadTextInputLineMode lineInputMode,
    Pointer<Utf8> description,
    int charMax,
    Pointer<Utf8> existingText,
  ) =>
      _showGamepadTextInput.call(
        this,
        inputMode,
        lineInputMode,
        description,
        charMax,
        existingText,
      );

  int getEnteredGamepadTextLength() => _getEnteredGamepadTextLength.call(
        this,
      );

  bool getEnteredGamepadTextInput(
    Pointer<Utf8> text,
    int cchText,
  ) =>
      _getEnteredGamepadTextInput.call(
        this,
        text,
        cchText,
      );

  Pointer<Utf8> getSteamUILanguage() => _getSteamUILanguage.call(
        this,
      );

  bool isSteamRunningInVr() => _isSteamRunningInVr.call(
        this,
      );

  void setOverlayNotificationInset(
    int nHorizontalInset,
    int nVerticalInset,
  ) =>
      _setOverlayNotificationInset.call(
        this,
        nHorizontalInset,
        nVerticalInset,
      );

  bool isSteamInBigPictureMode() => _isSteamInBigPictureMode.call(
        this,
      );

  void startVrDashboard() => _startVrDashboard.call(
        this,
      );

  bool isVrHeadsetStreamingEnabled() => _isVrHeadsetStreamingEnabled.call(
        this,
      );

  void setVrHeadsetStreamingEnabled(
    bool enabled,
  ) =>
      _setVrHeadsetStreamingEnabled.call(
        this,
        enabled,
      );

  bool isSteamChinaLauncher() => _isSteamChinaLauncher.call(
        this,
      );

  bool initFilterText(
    int filterOptions,
  ) =>
      _initFilterText.call(
        this,
        filterOptions,
      );

  int filterText(
    ETextFilteringContext context,
    CSteamId sourceSteamId,
    Pointer<Utf8> inputMessage,
    Pointer<Utf8> outFilteredText,
    int nByteSizeOutFilteredText,
  ) =>
      _filterText.call(
        this,
        context,
        sourceSteamId,
        inputMessage,
        outFilteredText,
        nByteSizeOutFilteredText,
      );

  ESteamIpv6ConnectivityState getIpv6ConnectivityState(
    ESteamIpv6ConnectivityProtocol protocol,
  ) =>
      _getIpv6ConnectivityState.call(
        this,
        protocol,
      );

  bool isSteamRunningOnSteamDeck() => _isSteamRunningOnSteamDeck.call(
        this,
      );

  bool showFloatingGamepadTextInput(
    EFloatingGamepadTextInputMode keyboardMode,
    int nTextFieldXPosition,
    int nTextFieldYPosition,
    int nTextFieldWidth,
    int nTextFieldHeight,
  ) =>
      _showFloatingGamepadTextInput.call(
        this,
        keyboardMode,
        nTextFieldXPosition,
        nTextFieldYPosition,
        nTextFieldWidth,
        nTextFieldHeight,
      );

  void setGameLauncherMode(
    bool launcherMode,
  ) =>
      _setGameLauncherMode.call(
        this,
        launcherMode,
      );

  bool dismissFloatingGamepadTextInput() =>
      _dismissFloatingGamepadTextInput.call(
        this,
      );
}
