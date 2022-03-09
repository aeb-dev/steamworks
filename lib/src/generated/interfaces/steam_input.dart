import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_controller_haptic_location.dart";
import "../enums/e_input_action_origin.dart";
import "../enums/e_steam_controller_pad.dart";
import "../enums/e_steam_input_glyph_size.dart";
import "../enums/e_steam_input_type.dart";
import "../enums/e_xbox_origin.dart";
import "../steam_api.dart";
import "../structs/input_analog_action_data.dart";
import "../structs/input_digital_action_data.dart";
import "../structs/input_motion_data.dart";
import "../typedefs.dart";

class SteamInput extends Opaque {
  static Pointer<SteamInput> steamInput() => nullptr;
}

final _init = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInput>,
  Bool,
),
    bool Function(
  Pointer<SteamInput>,
  bool,
)>("SteamAPI_ISteamInput_Init");

final _shutdown = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInput>,
),
    bool Function(
  Pointer<SteamInput>,
)>("SteamAPI_ISteamInput_Shutdown");

final _setInputActionManifestFilePath = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_SetInputActionManifestFilePath");

final _runFrame = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  Bool,
),
    void Function(
  Pointer<SteamInput>,
  bool,
)>("SteamAPI_ISteamInput_RunFrame");

final _bWaitForData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInput>,
  Bool,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInput>,
  bool,
  int,
)>("SteamAPI_ISteamInput_BWaitForData");

final _bNewDataAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInput>,
),
    bool Function(
  Pointer<SteamInput>,
)>("SteamAPI_ISteamInput_BNewDataAvailable");

final _getConnectedControllers = dl.lookupFunction<
    Int Function(
  Pointer<SteamInput>,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<SteamInput>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamInput_GetConnectedControllers");

final _enableDeviceCallbacks = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
),
    void Function(
  Pointer<SteamInput>,
)>("SteamAPI_ISteamInput_EnableDeviceCallbacks");

final _getActionSetHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
),
    InputActionSetHandle Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_GetActionSetHandle");

final _activateActionSet = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  InputActionSetHandle,
)>("SteamAPI_ISteamInput_ActivateActionSet");

final _getCurrentActionSet = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    InputActionSetHandle Function(
  Pointer<SteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetCurrentActionSet");

final _activateActionSetLayer = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  InputActionSetHandle,
)>("SteamAPI_ISteamInput_ActivateActionSetLayer");

final _deactivateActionSetLayer = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  InputActionSetHandle,
)>("SteamAPI_ISteamInput_DeactivateActionSetLayer");

final _deactivateAllActionSetLayers = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_DeactivateAllActionSetLayers");

final _getActiveActionSetLayers = dl.lookupFunction<
    Int Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<SteamInput>,
  InputHandle,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamInput_GetActiveActionSetLayers");

final _getDigitalActionHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
),
    InputDigitalActionHandle Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_GetDigitalActionHandle");

final _getDigitalActionData = dl.lookupFunction<
    InputDigitalActionData Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    InputDigitalActionData Function(
  Pointer<SteamInput>,
  InputHandle,
  InputDigitalActionHandle,
)>("SteamAPI_ISteamInput_GetDigitalActionData");

final _getDigitalActionOrigins = dl.lookupFunction<
    Int Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Int32>,
),
    int Function(
  Pointer<SteamInput>,
  InputHandle,
  InputActionSetHandle,
  InputDigitalActionHandle,
  Pointer<Int32>,
)>("SteamAPI_ISteamInput_GetDigitalActionOrigins");

final _getStringForDigitalActionName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  InputDigitalActionHandle,
)>("SteamAPI_ISteamInput_GetStringForDigitalActionName");

final _getAnalogActionHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
),
    InputAnalogActionHandle Function(
  Pointer<SteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_GetAnalogActionHandle");

final _getAnalogActionData = dl.lookupFunction<
    InputAnalogActionData Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    InputAnalogActionData Function(
  Pointer<SteamInput>,
  InputHandle,
  InputAnalogActionHandle,
)>("SteamAPI_ISteamInput_GetAnalogActionData");

final _getAnalogActionOrigins = dl.lookupFunction<
    Int Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Int32>,
),
    int Function(
  Pointer<SteamInput>,
  InputHandle,
  InputActionSetHandle,
  InputAnalogActionHandle,
  Pointer<Int32>,
)>("SteamAPI_ISteamInput_GetAnalogActionOrigins");

final _getGlyphPNGForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  Int32,
  Int32,
  UnsignedInt,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  EInputActionOrigin,
  ESteamInputGlyphSize,
  int,
)>("SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin");

final _getGlyphSVGForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  Int32,
  UnsignedInt,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  EInputActionOrigin,
  int,
)>("SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin");

final _getGlyphForActionOriginLegacy = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  EInputActionOrigin,
)>("SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy");

final _getStringForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  EInputActionOrigin,
)>("SteamAPI_ISteamInput_GetStringForActionOrigin");

final _getStringForAnalogActionName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  InputAnalogActionHandle,
)>("SteamAPI_ISteamInput_GetStringForAnalogActionName");

final _stopAnalogActionMomentum = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  InputAnalogActionHandle,
)>("SteamAPI_ISteamInput_StopAnalogActionMomentum");

final _getMotionData = dl.lookupFunction<
    InputMotionData Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    InputMotionData Function(
  Pointer<SteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetMotionData");

final _triggerVibration = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedShort,
  UnsignedShort,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  int,
  int,
)>("SteamAPI_ISteamInput_TriggerVibration");

final _triggerVibrationExtended = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedShort,
  UnsignedShort,
  UnsignedShort,
  UnsignedShort,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_TriggerVibrationExtended");

final _triggerSimpleHapticEvent = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  Int32,
  UnsignedChar,
  Char,
  UnsignedChar,
  Char,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  EControllerHapticLocation,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_TriggerSimpleHapticEvent");

final _setLEDColor = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  UnsignedChar,
  UnsignedChar,
  UnsignedChar,
  UnsignedInt,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_SetLEDColor");

final _legacyTriggerHapticPulse = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  Int32,
  UnsignedShort,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  ESteamControllerPad,
  int,
)>("SteamAPI_ISteamInput_Legacy_TriggerHapticPulse");

final _legacyTriggerRepeatedHapticPulse = dl.lookupFunction<
    Void Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  Int32,
  UnsignedShort,
  UnsignedShort,
  UnsignedShort,
  UnsignedInt,
),
    void Function(
  Pointer<SteamInput>,
  InputHandle,
  ESteamControllerPad,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse");

final _showBindingPanel = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_ShowBindingPanel");

final _getInputTypeForHandle = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    ESteamInputType Function(
  Pointer<SteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetInputTypeForHandle");

final _getControllerForGamepadIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInput>,
  Int,
),
    InputHandle Function(
  Pointer<SteamInput>,
  int,
)>("SteamAPI_ISteamInput_GetControllerForGamepadIndex");

final _getGamepadIndexForController = dl.lookupFunction<
    Int Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetGamepadIndexForController");

final _getStringForXboxOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  EXboxOrigin,
)>("SteamAPI_ISteamInput_GetStringForXboxOrigin");

final _getGlyphForXboxOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamInput>,
  EXboxOrigin,
)>("SteamAPI_ISteamInput_GetGlyphForXboxOrigin");

final _getActionOriginFromXboxOrigin = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  Int32,
),
    EInputActionOrigin Function(
  Pointer<SteamInput>,
  InputHandle,
  EXboxOrigin,
)>("SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin");

final _translateActionOrigin = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamInput>,
  Int32,
  Int32,
),
    EInputActionOrigin Function(
  Pointer<SteamInput>,
  ESteamInputType,
  EInputActionOrigin,
)>("SteamAPI_ISteamInput_TranslateActionOrigin");

final _getDeviceBindingRevision = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamInput>,
  InputHandle,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamInput_GetDeviceBindingRevision");

final _getRemotePlaySessionID = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamInput>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetRemotePlaySessionID");

final _getSessionInputConfigurationSettings = dl.lookupFunction<
    UnsignedShort Function(
  Pointer<SteamInput>,
),
    int Function(
  Pointer<SteamInput>,
)>("SteamAPI_ISteamInput_GetSessionInputConfigurationSettings");

extension SteamInputExtensions on Pointer<SteamInput> {
  bool init(
    bool bExplicitlyCallRunFrame,
  ) =>
      _init.call(
        this,
        bExplicitlyCallRunFrame,
      );

  bool shutdown() => _shutdown.call(
        this,
      );

  bool setInputActionManifestFilePath(
    Pointer<Utf8> pchInputActionManifestAbsolutePath,
  ) =>
      _setInputActionManifestFilePath.call(
        this,
        pchInputActionManifestAbsolutePath,
      );

  void runFrame(
    bool bReservedValue,
  ) =>
      _runFrame.call(
        this,
        bReservedValue,
      );

  bool bWaitForData(
    bool bWaitForever,
    int unTimeout,
  ) =>
      _bWaitForData.call(
        this,
        bWaitForever,
        unTimeout,
      );

  bool bNewDataAvailable() => _bNewDataAvailable.call(
        this,
      );

  int getConnectedControllers(
    Pointer<UnsignedLongLong> handlesOut,
  ) =>
      _getConnectedControllers.call(
        this,
        handlesOut,
      );

  void enableDeviceCallbacks() => _enableDeviceCallbacks.call(
        this,
      );

  InputActionSetHandle getActionSetHandle(
    Pointer<Utf8> pszActionSetName,
  ) =>
      _getActionSetHandle.call(
        this,
        pszActionSetName,
      );

  void activateActionSet(
    InputHandle inputHandle,
    InputActionSetHandle actionSetHandle,
  ) =>
      _activateActionSet.call(
        this,
        inputHandle,
        actionSetHandle,
      );

  InputActionSetHandle getCurrentActionSet(
    InputHandle inputHandle,
  ) =>
      _getCurrentActionSet.call(
        this,
        inputHandle,
      );

  void activateActionSetLayer(
    InputHandle inputHandle,
    InputActionSetHandle actionSetLayerHandle,
  ) =>
      _activateActionSetLayer.call(
        this,
        inputHandle,
        actionSetLayerHandle,
      );

  void deactivateActionSetLayer(
    InputHandle inputHandle,
    InputActionSetHandle actionSetLayerHandle,
  ) =>
      _deactivateActionSetLayer.call(
        this,
        inputHandle,
        actionSetLayerHandle,
      );

  void deactivateAllActionSetLayers(
    InputHandle inputHandle,
  ) =>
      _deactivateAllActionSetLayers.call(
        this,
        inputHandle,
      );

  int getActiveActionSetLayers(
    InputHandle inputHandle,
    Pointer<UnsignedLongLong> handlesOut,
  ) =>
      _getActiveActionSetLayers.call(
        this,
        inputHandle,
        handlesOut,
      );

  InputDigitalActionHandle getDigitalActionHandle(
    Pointer<Utf8> pszActionName,
  ) =>
      _getDigitalActionHandle.call(
        this,
        pszActionName,
      );

  InputDigitalActionData getDigitalActionData(
    InputHandle inputHandle,
    InputDigitalActionHandle digitalActionHandle,
  ) =>
      _getDigitalActionData.call(
        this,
        inputHandle,
        digitalActionHandle,
      );

  int getDigitalActionOrigins(
    InputHandle inputHandle,
    InputActionSetHandle actionSetHandle,
    InputDigitalActionHandle digitalActionHandle,
    Pointer<Int32> originsOut,
  ) =>
      _getDigitalActionOrigins.call(
        this,
        inputHandle,
        actionSetHandle,
        digitalActionHandle,
        originsOut,
      );

  Pointer<Utf8> getStringForDigitalActionName(
    InputDigitalActionHandle eActionHandle,
  ) =>
      _getStringForDigitalActionName.call(
        this,
        eActionHandle,
      );

  InputAnalogActionHandle getAnalogActionHandle(
    Pointer<Utf8> pszActionName,
  ) =>
      _getAnalogActionHandle.call(
        this,
        pszActionName,
      );

  InputAnalogActionData getAnalogActionData(
    InputHandle inputHandle,
    InputAnalogActionHandle analogActionHandle,
  ) =>
      _getAnalogActionData.call(
        this,
        inputHandle,
        analogActionHandle,
      );

  int getAnalogActionOrigins(
    InputHandle inputHandle,
    InputActionSetHandle actionSetHandle,
    InputAnalogActionHandle analogActionHandle,
    Pointer<Int32> originsOut,
  ) =>
      _getAnalogActionOrigins.call(
        this,
        inputHandle,
        actionSetHandle,
        analogActionHandle,
        originsOut,
      );

  Pointer<Utf8> getGlyphPNGForActionOrigin(
    EInputActionOrigin eOrigin,
    ESteamInputGlyphSize eSize,
    int unFlags,
  ) =>
      _getGlyphPNGForActionOrigin.call(
        this,
        eOrigin,
        eSize,
        unFlags,
      );

  Pointer<Utf8> getGlyphSVGForActionOrigin(
    EInputActionOrigin eOrigin,
    int unFlags,
  ) =>
      _getGlyphSVGForActionOrigin.call(
        this,
        eOrigin,
        unFlags,
      );

  Pointer<Utf8> getGlyphForActionOriginLegacy(
    EInputActionOrigin eOrigin,
  ) =>
      _getGlyphForActionOriginLegacy.call(
        this,
        eOrigin,
      );

  Pointer<Utf8> getStringForActionOrigin(
    EInputActionOrigin eOrigin,
  ) =>
      _getStringForActionOrigin.call(
        this,
        eOrigin,
      );

  Pointer<Utf8> getStringForAnalogActionName(
    InputAnalogActionHandle eActionHandle,
  ) =>
      _getStringForAnalogActionName.call(
        this,
        eActionHandle,
      );

  void stopAnalogActionMomentum(
    InputHandle inputHandle,
    InputAnalogActionHandle eAction,
  ) =>
      _stopAnalogActionMomentum.call(
        this,
        inputHandle,
        eAction,
      );

  InputMotionData getMotionData(
    InputHandle inputHandle,
  ) =>
      _getMotionData.call(
        this,
        inputHandle,
      );

  void triggerVibration(
    InputHandle inputHandle,
    int usLeftSpeed,
    int usRightSpeed,
  ) =>
      _triggerVibration.call(
        this,
        inputHandle,
        usLeftSpeed,
        usRightSpeed,
      );

  void triggerVibrationExtended(
    InputHandle inputHandle,
    int usLeftSpeed,
    int usRightSpeed,
    int usLeftTriggerSpeed,
    int usRightTriggerSpeed,
  ) =>
      _triggerVibrationExtended.call(
        this,
        inputHandle,
        usLeftSpeed,
        usRightSpeed,
        usLeftTriggerSpeed,
        usRightTriggerSpeed,
      );

  void triggerSimpleHapticEvent(
    InputHandle inputHandle,
    EControllerHapticLocation eHapticLocation,
    int nIntensity,
    int nGainDB,
    int nOtherIntensity,
    int nOtherGainDB,
  ) =>
      _triggerSimpleHapticEvent.call(
        this,
        inputHandle,
        eHapticLocation,
        nIntensity,
        nGainDB,
        nOtherIntensity,
        nOtherGainDB,
      );

  void setLEDColor(
    InputHandle inputHandle,
    int nColorR,
    int nColorG,
    int nColorB,
    int nFlags,
  ) =>
      _setLEDColor.call(
        this,
        inputHandle,
        nColorR,
        nColorG,
        nColorB,
        nFlags,
      );

  void legacyTriggerHapticPulse(
    InputHandle inputHandle,
    ESteamControllerPad eTargetPad,
    int usDurationMicroSec,
  ) =>
      _legacyTriggerHapticPulse.call(
        this,
        inputHandle,
        eTargetPad,
        usDurationMicroSec,
      );

  void legacyTriggerRepeatedHapticPulse(
    InputHandle inputHandle,
    ESteamControllerPad eTargetPad,
    int usDurationMicroSec,
    int usOffMicroSec,
    int unRepeat,
    int nFlags,
  ) =>
      _legacyTriggerRepeatedHapticPulse.call(
        this,
        inputHandle,
        eTargetPad,
        usDurationMicroSec,
        usOffMicroSec,
        unRepeat,
        nFlags,
      );

  bool showBindingPanel(
    InputHandle inputHandle,
  ) =>
      _showBindingPanel.call(
        this,
        inputHandle,
      );

  ESteamInputType getInputTypeForHandle(
    InputHandle inputHandle,
  ) =>
      _getInputTypeForHandle.call(
        this,
        inputHandle,
      );

  InputHandle getControllerForGamepadIndex(
    int nIndex,
  ) =>
      _getControllerForGamepadIndex.call(
        this,
        nIndex,
      );

  int getGamepadIndexForController(
    InputHandle ulinputHandle,
  ) =>
      _getGamepadIndexForController.call(
        this,
        ulinputHandle,
      );

  Pointer<Utf8> getStringForXboxOrigin(
    EXboxOrigin eOrigin,
  ) =>
      _getStringForXboxOrigin.call(
        this,
        eOrigin,
      );

  Pointer<Utf8> getGlyphForXboxOrigin(
    EXboxOrigin eOrigin,
  ) =>
      _getGlyphForXboxOrigin.call(
        this,
        eOrigin,
      );

  EInputActionOrigin getActionOriginFromXboxOrigin(
    InputHandle inputHandle,
    EXboxOrigin eOrigin,
  ) =>
      _getActionOriginFromXboxOrigin.call(
        this,
        inputHandle,
        eOrigin,
      );

  EInputActionOrigin translateActionOrigin(
    ESteamInputType eDestinationInputType,
    EInputActionOrigin eSourceOrigin,
  ) =>
      _translateActionOrigin.call(
        this,
        eDestinationInputType,
        eSourceOrigin,
      );

  bool getDeviceBindingRevision(
    InputHandle inputHandle,
    Pointer<Int> pMajor,
    Pointer<Int> pMinor,
  ) =>
      _getDeviceBindingRevision.call(
        this,
        inputHandle,
        pMajor,
        pMinor,
      );

  int getRemotePlaySessionID(
    InputHandle inputHandle,
  ) =>
      _getRemotePlaySessionID.call(
        this,
        inputHandle,
      );

  int getSessionInputConfigurationSettings() =>
      _getSessionInputConfigurationSettings.call(
        this,
      );
}
