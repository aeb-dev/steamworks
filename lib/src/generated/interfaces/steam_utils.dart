import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";
import "../enums/e_universe.dart";
import "../enums/e_notification_position.dart";
import "../enums/e_steam_api_call_failure.dart";
import "../enums/e_gamepad_text_input_mode.dart";
import "../enums/e_gamepad_text_input_line_mode.dart";
import "../enums/e_text_filtering_context.dart";
import "../enums/e_steam_ipv6_connectivity_state.dart";
import "../enums/e_steam_ipv6_connectivity_protocol.dart";
import "../enums/e_floating_gamepad_text_input_mode.dart";

class SteamUtils extends Opaque {
  static Pointer<SteamUtils> steamUtils() => nullptr;
  static Pointer<SteamUtils> steamGameServerUtils() => nullptr;
}

final _getSecondsSinceAppActive = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUtils>,
),
    int Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetSecondsSinceAppActive");

final _getSecondsSinceComputerActive = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUtils>,
),
    int Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetSecondsSinceComputerActive");

final _getConnectedUniverse = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUtils>,
),
    EUniverse Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetConnectedUniverse");

final _getServerRealTime = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUtils>,
),
    int Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetServerRealTime");

final _getIPCountry = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamUtils>,
),
    Pointer<Utf8> Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetIPCountry");

final _getImageSize = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  Int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamUtils>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUtils_GetImageSize");

final _getImageRGBA = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  Int,
  Pointer<UnsignedChar>,
  Int,
),
    bool Function(
  Pointer<SteamUtils>,
  int,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamUtils_GetImageRGBA");

final _getCurrentBatteryPower = dl.lookupFunction<
    UnsignedChar Function(
  Pointer<SteamUtils>,
),
    int Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetCurrentBatteryPower");

final _getAppID = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUtils>,
),
    int Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetAppID");

final _setOverlayNotificationPosition = dl.lookupFunction<
    Void Function(
  Pointer<SteamUtils>,
  Int32,
),
    void Function(
  Pointer<SteamUtils>,
  ENotificationPosition,
)>("SteamAPI_ISteamUtils_SetOverlayNotificationPosition");

final _isAPICallCompleted = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  UnsignedLongLong,
  Pointer<Bool>,
),
    bool Function(
  Pointer<SteamUtils>,
  SteamApiCall,
  Pointer<Bool>,
)>("SteamAPI_ISteamUtils_IsAPICallCompleted");

final _getAPICallFailureReason = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUtils>,
  UnsignedLongLong,
),
    ESteamApiCallFailure Function(
  Pointer<SteamUtils>,
  SteamApiCall,
)>("SteamAPI_ISteamUtils_GetAPICallFailureReason");

final _getAPICallResult = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
  Int,
  Pointer<Bool>,
),
    bool Function(
  Pointer<SteamUtils>,
  SteamApiCall,
  Pointer<Void>,
  int,
  int,
  Pointer<Bool>,
)>("SteamAPI_ISteamUtils_GetAPICallResult");

final _getIPCCallCount = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUtils>,
),
    int Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetIPCCallCount");

final _isOverlayEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_IsOverlayEnabled");

final _bOverlayNeedsPresent = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_BOverlayNeedsPresent");

final _checkFileSignature = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUtils>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamUtils>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUtils_CheckFileSignature");

final _showGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  Int32,
  Int32,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUtils>,
  EGamepadTextInputMode,
  EGamepadTextInputLineMode,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUtils_ShowGamepadTextInput");

final _getEnteredGamepadTextLength = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUtils>,
),
    int Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetEnteredGamepadTextLength");

final _getEnteredGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUtils>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUtils_GetEnteredGamepadTextInput");

final _getSteamUILanguage = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamUtils>,
),
    Pointer<Utf8> Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_GetSteamUILanguage");

final _isSteamRunningInVR = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamRunningInVR");

final _setOverlayNotificationInset = dl.lookupFunction<
    Void Function(
  Pointer<SteamUtils>,
  Int,
  Int,
),
    void Function(
  Pointer<SteamUtils>,
  int,
  int,
)>("SteamAPI_ISteamUtils_SetOverlayNotificationInset");

final _isSteamInBigPictureMode = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamInBigPictureMode");

final _startVRDashboard = dl.lookupFunction<
    Void Function(
  Pointer<SteamUtils>,
),
    void Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_StartVRDashboard");

final _isVRHeadsetStreamingEnabled = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled");

final _setVRHeadsetStreamingEnabled = dl.lookupFunction<
    Void Function(
  Pointer<SteamUtils>,
  Bool,
),
    void Function(
  Pointer<SteamUtils>,
  bool,
)>("SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled");

final _isSteamChinaLauncher = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamChinaLauncher");

final _initFilterText = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUtils>,
  int,
)>("SteamAPI_ISteamUtils_InitFilterText");

final _filterText = dl.lookupFunction<
    Int Function(
  Pointer<SteamUtils>,
  Int32,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamUtils>,
  ETextFilteringContext,
  CSteamId,
  Pointer<Utf8>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUtils_FilterText");

final _getIPv6ConnectivityState = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUtils>,
  Int32,
),
    ESteamIpv6ConnectivityState Function(
  Pointer<SteamUtils>,
  ESteamIpv6ConnectivityProtocol,
)>("SteamAPI_ISteamUtils_GetIPv6ConnectivityState");

final _isSteamRunningOnSteamDeck = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck");

final _showFloatingGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
  Int32,
  Int,
  Int,
  Int,
  Int,
),
    bool Function(
  Pointer<SteamUtils>,
  EFloatingGamepadTextInputMode,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput");

final _setGameLauncherMode = dl.lookupFunction<
    Void Function(
  Pointer<SteamUtils>,
  Bool,
),
    void Function(
  Pointer<SteamUtils>,
  bool,
)>("SteamAPI_ISteamUtils_SetGameLauncherMode");

final _dismissFloatingGamepadTextInput = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUtils>,
),
    bool Function(
  Pointer<SteamUtils>,
)>("SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput");

extension SteamUtilsExtensions on Pointer<SteamUtils> {
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

  Pointer<Utf8> getIPCountry() => _getIPCountry.call(
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

  int getAppID() => _getAppID.call(
        this,
      );

  void setOverlayNotificationPosition(
    ENotificationPosition eNotificationPosition,
  ) =>
      _setOverlayNotificationPosition.call(
        this,
        eNotificationPosition,
      );

  bool isAPICallCompleted(
    SteamApiCall hSteamAPICall,
    Pointer<Bool> pbFailed,
  ) =>
      _isAPICallCompleted.call(
        this,
        hSteamAPICall,
        pbFailed,
      );

  ESteamApiCallFailure getAPICallFailureReason(
    SteamApiCall hSteamAPICall,
  ) =>
      _getAPICallFailureReason.call(
        this,
        hSteamAPICall,
      );

  bool getAPICallResult(
    SteamApiCall hSteamAPICall,
    Pointer<Void> pCallback,
    int cubCallback,
    int iCallbackExpected,
    Pointer<Bool> pbFailed,
  ) =>
      _getAPICallResult.call(
        this,
        hSteamAPICall,
        pCallback,
        cubCallback,
        iCallbackExpected,
        pbFailed,
      );

  int getIPCCallCount() => _getIPCCallCount.call(
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
    EGamepadTextInputMode eInputMode,
    EGamepadTextInputLineMode eLineInputMode,
    Pointer<Utf8> pchDescription,
    int unCharMax,
    Pointer<Utf8> pchExistingText,
  ) =>
      _showGamepadTextInput.call(
        this,
        eInputMode,
        eLineInputMode,
        pchDescription,
        unCharMax,
        pchExistingText,
      );

  int getEnteredGamepadTextLength() => _getEnteredGamepadTextLength.call(
        this,
      );

  bool getEnteredGamepadTextInput(
    Pointer<Utf8> pchText,
    int cchText,
  ) =>
      _getEnteredGamepadTextInput.call(
        this,
        pchText,
        cchText,
      );

  Pointer<Utf8> getSteamUILanguage() => _getSteamUILanguage.call(
        this,
      );

  bool isSteamRunningInVR() => _isSteamRunningInVR.call(
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

  void startVRDashboard() => _startVRDashboard.call(
        this,
      );

  bool isVRHeadsetStreamingEnabled() => _isVRHeadsetStreamingEnabled.call(
        this,
      );

  void setVRHeadsetStreamingEnabled(
    bool bEnabled,
  ) =>
      _setVRHeadsetStreamingEnabled.call(
        this,
        bEnabled,
      );

  bool isSteamChinaLauncher() => _isSteamChinaLauncher.call(
        this,
      );

  bool initFilterText(
    int unFilterOptions,
  ) =>
      _initFilterText.call(
        this,
        unFilterOptions,
      );

  int filterText(
    ETextFilteringContext eContext,
    CSteamId sourceSteamID,
    Pointer<Utf8> pchInputMessage,
    Pointer<Utf8> pchOutFilteredText,
    int nByteSizeOutFilteredText,
  ) =>
      _filterText.call(
        this,
        eContext,
        sourceSteamID,
        pchInputMessage,
        pchOutFilteredText,
        nByteSizeOutFilteredText,
      );

  ESteamIpv6ConnectivityState getIPv6ConnectivityState(
    ESteamIpv6ConnectivityProtocol eProtocol,
  ) =>
      _getIPv6ConnectivityState.call(
        this,
        eProtocol,
      );

  bool isSteamRunningOnSteamDeck() => _isSteamRunningOnSteamDeck.call(
        this,
      );

  bool showFloatingGamepadTextInput(
    EFloatingGamepadTextInputMode eKeyboardMode,
    int nTextFieldXPosition,
    int nTextFieldYPosition,
    int nTextFieldWidth,
    int nTextFieldHeight,
  ) =>
      _showFloatingGamepadTextInput.call(
        this,
        eKeyboardMode,
        nTextFieldXPosition,
        nTextFieldYPosition,
        nTextFieldWidth,
        nTextFieldHeight,
      );

  void setGameLauncherMode(
    bool bLauncherMode,
  ) =>
      _setGameLauncherMode.call(
        this,
        bLauncherMode,
      );

  bool dismissFloatingGamepadTextInput() =>
      _dismissFloatingGamepadTextInput.call(
        this,
      );
}
