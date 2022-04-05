// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/econtroller_haptic_location.dart";
import "../enums/einput_action_origin.dart";
import "../enums/esteam_controller_pad.dart";
import "../enums/esteam_input_glyph_size.dart";
import "../enums/esteam_input_type.dart";
import "../enums/exbox_origin.dart";
import "../structs/input_analog_action_data.dart";
import "../structs/input_digital_action_data.dart";
import "../structs/input_motion_data.dart";
import "../typedefs.dart";

final _steamInput = dl.lookupFunction<Pointer<ISteamInput> Function(),
    Pointer<ISteamInput> Function()>("SteamAPI_SteamInput_v006");

class ISteamInput extends Opaque {
  static Pointer<ISteamInput> get userInstance => _steamInput();
}

final _init = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInput>,
  Bool,
),
    bool Function(
  Pointer<ISteamInput>,
  bool,
)>("SteamAPI_ISteamInput_Init");

final _shutdown = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInput>,
),
    bool Function(
  Pointer<ISteamInput>,
)>("SteamAPI_ISteamInput_Shutdown");

final _setInputActionManifestFilePath = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_SetInputActionManifestFilePath");

final _runFrame = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  Bool,
),
    void Function(
  Pointer<ISteamInput>,
  bool,
)>("SteamAPI_ISteamInput_RunFrame");

final _bWaitForData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInput>,
  Bool,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInput>,
  bool,
  int,
)>("SteamAPI_ISteamInput_BWaitForData");

final _bNewDataAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInput>,
),
    bool Function(
  Pointer<ISteamInput>,
)>("SteamAPI_ISteamInput_BNewDataAvailable");

final _getConnectedControllers = dl.lookupFunction<
    Int Function(
  Pointer<ISteamInput>,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<ISteamInput>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamInput_GetConnectedControllers");

final _enableDeviceCallbacks = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
),
    void Function(
  Pointer<ISteamInput>,
)>("SteamAPI_ISteamInput_EnableDeviceCallbacks");

final _getActionSetHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
),
    InputActionSetHandle Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_GetActionSetHandle");

final _activateActionSet = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputActionSetHandle,
)>("SteamAPI_ISteamInput_ActivateActionSet");

final _getCurrentActionSet = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    InputActionSetHandle Function(
  Pointer<ISteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetCurrentActionSet");

final _activateActionSetLayer = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputActionSetHandle,
)>("SteamAPI_ISteamInput_ActivateActionSetLayer");

final _deactivateActionSetLayer = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputActionSetHandle,
)>("SteamAPI_ISteamInput_DeactivateActionSetLayer");

final _deactivateAllActionSetLayers = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_DeactivateAllActionSetLayers");

final _getActiveActionSetLayers = dl.lookupFunction<
    Int Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<ISteamInput>,
  InputHandle,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamInput_GetActiveActionSetLayers");

final _getDigitalActionHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
),
    InputDigitalActionHandle Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_GetDigitalActionHandle");

final _getDigitalActionData = dl.lookupFunction<
    InputDigitalActionData Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    InputDigitalActionData Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputDigitalActionHandle,
)>("SteamAPI_ISteamInput_GetDigitalActionData");

final _getDigitalActionOrigins = dl.lookupFunction<
    Int Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Int32>,
),
    int Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputActionSetHandle,
  InputDigitalActionHandle,
  Pointer<Int32>,
)>("SteamAPI_ISteamInput_GetDigitalActionOrigins");

final _getStringForDigitalActionName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  InputDigitalActionHandle,
)>("SteamAPI_ISteamInput_GetStringForDigitalActionName");

final _getAnalogActionHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
),
    InputAnalogActionHandle Function(
  Pointer<ISteamInput>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInput_GetAnalogActionHandle");

final _getAnalogActionData = dl.lookupFunction<
    InputAnalogActionData Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    InputAnalogActionData Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputAnalogActionHandle,
)>("SteamAPI_ISteamInput_GetAnalogActionData");

final _getAnalogActionOrigins = dl.lookupFunction<
    Int Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Int32>,
),
    int Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputActionSetHandle,
  InputAnalogActionHandle,
  Pointer<Int32>,
)>("SteamAPI_ISteamInput_GetAnalogActionOrigins");

final _getGlyphPNGForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  Int32,
  Int32,
  UnsignedInt,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  EInputActionOrigin,
  ESteamInputGlyphSize,
  int,
)>("SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin");

final _getGlyphSVGForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  Int32,
  UnsignedInt,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  EInputActionOrigin,
  int,
)>("SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin");

final _getGlyphForActionOriginLegacy = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  EInputActionOrigin,
)>("SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy");

final _getStringForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  EInputActionOrigin,
)>("SteamAPI_ISteamInput_GetStringForActionOrigin");

final _getStringForAnalogActionName = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  InputAnalogActionHandle,
)>("SteamAPI_ISteamInput_GetStringForAnalogActionName");

final _stopAnalogActionMomentum = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  InputAnalogActionHandle,
)>("SteamAPI_ISteamInput_StopAnalogActionMomentum");

final _getMotionData = dl.lookupFunction<
    InputMotionData Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    InputMotionData Function(
  Pointer<ISteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetMotionData");

final _triggerVibration = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedShort,
  UnsignedShort,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  int,
  int,
)>("SteamAPI_ISteamInput_TriggerVibration");

final _triggerVibrationExtended = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedShort,
  UnsignedShort,
  UnsignedShort,
  UnsignedShort,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_TriggerVibrationExtended");

final _triggerSimpleHapticEvent = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  Int32,
  UnsignedChar,
  Char,
  UnsignedChar,
  Char,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  EControllerHapticLocation,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_TriggerSimpleHapticEvent");

final _setLedColor = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  UnsignedChar,
  UnsignedChar,
  UnsignedChar,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_SetLEDColor");

final _legacyTriggerHapticPulse = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  Int32,
  UnsignedShort,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  ESteamControllerPad,
  int,
)>("SteamAPI_ISteamInput_Legacy_TriggerHapticPulse");

final _legacyTriggerRepeatedHapticPulse = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  Int32,
  UnsignedShort,
  UnsignedShort,
  UnsignedShort,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamInput>,
  InputHandle,
  ESteamControllerPad,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse");

final _showBindingPanel = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_ShowBindingPanel");

final _getInputTypeForHandle = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    ESteamInputType Function(
  Pointer<ISteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetInputTypeForHandle");

final _getControllerForGamepadIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInput>,
  Int,
),
    InputHandle Function(
  Pointer<ISteamInput>,
  int,
)>("SteamAPI_ISteamInput_GetControllerForGamepadIndex");

final _getGamepadIndexForController = dl.lookupFunction<
    Int Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetGamepadIndexForController");

final _getStringForXboxOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  EXboxOrigin,
)>("SteamAPI_ISteamInput_GetStringForXboxOrigin");

final _getGlyphForXboxOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<ISteamInput>,
  EXboxOrigin,
)>("SteamAPI_ISteamInput_GetGlyphForXboxOrigin");

final _getActionOriginFromXboxOrigin = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  Int32,
),
    EInputActionOrigin Function(
  Pointer<ISteamInput>,
  InputHandle,
  EXboxOrigin,
)>("SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin");

final _translateActionOrigin = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamInput>,
  Int32,
  Int32,
),
    EInputActionOrigin Function(
  Pointer<ISteamInput>,
  ESteamInputType,
  EInputActionOrigin,
)>("SteamAPI_ISteamInput_TranslateActionOrigin");

final _getDeviceBindingRevision = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamInput>,
  InputHandle,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamInput_GetDeviceBindingRevision");

final _getRemotePlaySessionId = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamInput>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamInput>,
  InputHandle,
)>("SteamAPI_ISteamInput_GetRemotePlaySessionID");

final _getSessionInputConfigurationSettings = dl.lookupFunction<
    UnsignedShort Function(
  Pointer<ISteamInput>,
),
    int Function(
  Pointer<ISteamInput>,
)>("SteamAPI_ISteamInput_GetSessionInputConfigurationSettings");

extension ISteamInputExtensions on Pointer<ISteamInput> {
  bool init(
    bool explicitlyCallRunFrame,
  ) =>
      _init.call(
        this,
        explicitlyCallRunFrame,
      );

  bool shutdown() => _shutdown.call(
        this,
      );

  bool setInputActionManifestFilePath(
    Pointer<Utf8> inputActionManifestAbsolutePath,
  ) =>
      _setInputActionManifestFilePath.call(
        this,
        inputActionManifestAbsolutePath,
      );

  void runFrame(
    bool reservedValue,
  ) =>
      _runFrame.call(
        this,
        reservedValue,
      );

  bool bWaitForData(
    bool waitForever,
    int timeout,
  ) =>
      _bWaitForData.call(
        this,
        waitForever,
        timeout,
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
    InputDigitalActionHandle actionHandle,
  ) =>
      _getStringForDigitalActionName.call(
        this,
        actionHandle,
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
    EInputActionOrigin origin,
    ESteamInputGlyphSize size,
    int flags,
  ) =>
      _getGlyphPNGForActionOrigin.call(
        this,
        origin,
        size,
        flags,
      );

  Pointer<Utf8> getGlyphSVGForActionOrigin(
    EInputActionOrigin origin,
    int flags,
  ) =>
      _getGlyphSVGForActionOrigin.call(
        this,
        origin,
        flags,
      );

  Pointer<Utf8> getGlyphForActionOriginLegacy(
    EInputActionOrigin origin,
  ) =>
      _getGlyphForActionOriginLegacy.call(
        this,
        origin,
      );

  Pointer<Utf8> getStringForActionOrigin(
    EInputActionOrigin origin,
  ) =>
      _getStringForActionOrigin.call(
        this,
        origin,
      );

  Pointer<Utf8> getStringForAnalogActionName(
    InputAnalogActionHandle actionHandle,
  ) =>
      _getStringForAnalogActionName.call(
        this,
        actionHandle,
      );

  void stopAnalogActionMomentum(
    InputHandle inputHandle,
    InputAnalogActionHandle action,
  ) =>
      _stopAnalogActionMomentum.call(
        this,
        inputHandle,
        action,
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
    int leftSpeed,
    int rightSpeed,
  ) =>
      _triggerVibration.call(
        this,
        inputHandle,
        leftSpeed,
        rightSpeed,
      );

  void triggerVibrationExtended(
    InputHandle inputHandle,
    int leftSpeed,
    int rightSpeed,
    int leftTriggerSpeed,
    int rightTriggerSpeed,
  ) =>
      _triggerVibrationExtended.call(
        this,
        inputHandle,
        leftSpeed,
        rightSpeed,
        leftTriggerSpeed,
        rightTriggerSpeed,
      );

  void triggerSimpleHapticEvent(
    InputHandle inputHandle,
    EControllerHapticLocation hapticLocation,
    int nIntensity,
    int nGainDB,
    int nOtherIntensity,
    int nOtherGainDB,
  ) =>
      _triggerSimpleHapticEvent.call(
        this,
        inputHandle,
        hapticLocation,
        nIntensity,
        nGainDB,
        nOtherIntensity,
        nOtherGainDB,
      );

  void setLedColor(
    InputHandle inputHandle,
    int nColorR,
    int nColorG,
    int nColorB,
    int nFlags,
  ) =>
      _setLedColor.call(
        this,
        inputHandle,
        nColorR,
        nColorG,
        nColorB,
        nFlags,
      );

  void legacyTriggerHapticPulse(
    InputHandle inputHandle,
    ESteamControllerPad targetPad,
    int durationMicroSec,
  ) =>
      _legacyTriggerHapticPulse.call(
        this,
        inputHandle,
        targetPad,
        durationMicroSec,
      );

  void legacyTriggerRepeatedHapticPulse(
    InputHandle inputHandle,
    ESteamControllerPad targetPad,
    int durationMicroSec,
    int offMicroSec,
    int repeat,
    int nFlags,
  ) =>
      _legacyTriggerRepeatedHapticPulse.call(
        this,
        inputHandle,
        targetPad,
        durationMicroSec,
        offMicroSec,
        repeat,
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
    EXboxOrigin origin,
  ) =>
      _getStringForXboxOrigin.call(
        this,
        origin,
      );

  Pointer<Utf8> getGlyphForXboxOrigin(
    EXboxOrigin origin,
  ) =>
      _getGlyphForXboxOrigin.call(
        this,
        origin,
      );

  EInputActionOrigin getActionOriginFromXboxOrigin(
    InputHandle inputHandle,
    EXboxOrigin origin,
  ) =>
      _getActionOriginFromXboxOrigin.call(
        this,
        inputHandle,
        origin,
      );

  EInputActionOrigin translateActionOrigin(
    ESteamInputType destinationInputType,
    EInputActionOrigin sourceOrigin,
  ) =>
      _translateActionOrigin.call(
        this,
        destinationInputType,
        sourceOrigin,
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

  int getRemotePlaySessionId(
    InputHandle inputHandle,
  ) =>
      _getRemotePlaySessionId.call(
        this,
        inputHandle,
      );

  int getSessionInputConfigurationSettings() =>
      _getSessionInputConfigurationSettings.call(
        this,
      );
}
