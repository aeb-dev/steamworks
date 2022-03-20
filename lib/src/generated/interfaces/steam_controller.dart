import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_controller_action_origin.dart";
import "../enums/e_steam_controller_pad.dart";
import "../enums/e_steam_input_type.dart";
import "../enums/e_xbox_origin.dart";
import "../structs/input_analog_action_data.dart";
import "../structs/input_digital_action_data.dart";
import "../structs/input_motion_data.dart";
import "../typedefs.dart";

final _steamController = dl.lookupFunction<Pointer<SteamController> Function(),
    Pointer<SteamController> Function()>("SteamAPI_SteamController_v008");

class SteamController extends Opaque {
  static Pointer<SteamController> get userInstance => _steamController();
}

final _init = dl.lookupFunction<
    Bool Function(
  Pointer<SteamController>,
),
    bool Function(
  Pointer<SteamController>,
)>("SteamAPI_ISteamController_Init");

final _shutdown = dl.lookupFunction<
    Bool Function(
  Pointer<SteamController>,
),
    bool Function(
  Pointer<SteamController>,
)>("SteamAPI_ISteamController_Shutdown");

final _runFrame = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
),
    void Function(
  Pointer<SteamController>,
)>("SteamAPI_ISteamController_RunFrame");

final _getConnectedControllers = dl.lookupFunction<
    Int Function(
  Pointer<SteamController>,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<SteamController>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamController_GetConnectedControllers");

final _getActionSetHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamController>,
  Pointer<Utf8>,
),
    ControllerActionSetHandle Function(
  Pointer<SteamController>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamController_GetActionSetHandle");

final _activateActionSet = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerActionSetHandle,
)>("SteamAPI_ISteamController_ActivateActionSet");

final _getCurrentActionSet = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamController>,
  UnsignedLongLong,
),
    ControllerActionSetHandle Function(
  Pointer<SteamController>,
  ControllerHandle,
)>("SteamAPI_ISteamController_GetCurrentActionSet");

final _activateActionSetLayer = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerActionSetHandle,
)>("SteamAPI_ISteamController_ActivateActionSetLayer");

final _deactivateActionSetLayer = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerActionSetHandle,
)>("SteamAPI_ISteamController_DeactivateActionSetLayer");

final _deactivateAllActionSetLayers = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
)>("SteamAPI_ISteamController_DeactivateAllActionSetLayers");

final _getActiveActionSetLayers = dl.lookupFunction<
    Int Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
),
    int Function(
  Pointer<SteamController>,
  ControllerHandle,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamController_GetActiveActionSetLayers");

final _getDigitalActionHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamController>,
  Pointer<Utf8>,
),
    ControllerDigitalActionHandle Function(
  Pointer<SteamController>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamController_GetDigitalActionHandle");

final _getDigitalActionData = dl.lookupFunction<
    InputDigitalActionData Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    InputDigitalActionData Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerDigitalActionHandle,
)>("SteamAPI_ISteamController_GetDigitalActionData");

final _getDigitalActionOrigins = dl.lookupFunction<
    Int Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Int32>,
),
    int Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerActionSetHandle,
  ControllerDigitalActionHandle,
  Pointer<Int32>,
)>("SteamAPI_ISteamController_GetDigitalActionOrigins");

final _getAnalogActionHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamController>,
  Pointer<Utf8>,
),
    ControllerAnalogActionHandle Function(
  Pointer<SteamController>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamController_GetAnalogActionHandle");

final _getAnalogActionData = dl.lookupFunction<
    InputAnalogActionData Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    InputAnalogActionData Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerAnalogActionHandle,
)>("SteamAPI_ISteamController_GetAnalogActionData");

final _getAnalogActionOrigins = dl.lookupFunction<
    Int Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Int32>,
),
    int Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerActionSetHandle,
  ControllerAnalogActionHandle,
  Pointer<Int32>,
)>("SteamAPI_ISteamController_GetAnalogActionOrigins");

final _getGlyphForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  EControllerActionOrigin,
)>("SteamAPI_ISteamController_GetGlyphForActionOrigin");

final _getStringForActionOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  EControllerActionOrigin,
)>("SteamAPI_ISteamController_GetStringForActionOrigin");

final _stopAnalogActionMomentum = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  ControllerAnalogActionHandle,
)>("SteamAPI_ISteamController_StopAnalogActionMomentum");

final _getMotionData = dl.lookupFunction<
    InputMotionData Function(
  Pointer<SteamController>,
  UnsignedLongLong,
),
    InputMotionData Function(
  Pointer<SteamController>,
  ControllerHandle,
)>("SteamAPI_ISteamController_GetMotionData");

final _triggerHapticPulse = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  Int32,
  UnsignedShort,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  ESteamControllerPad,
  int,
)>("SteamAPI_ISteamController_TriggerHapticPulse");

final _triggerRepeatedHapticPulse = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  Int32,
  UnsignedShort,
  UnsignedShort,
  UnsignedShort,
  UnsignedInt,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  ESteamControllerPad,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamController_TriggerRepeatedHapticPulse");

final _triggerVibration = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedShort,
  UnsignedShort,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  int,
  int,
)>("SteamAPI_ISteamController_TriggerVibration");

final _setLedColor = dl.lookupFunction<
    Void Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  UnsignedChar,
  UnsignedChar,
  UnsignedChar,
  UnsignedInt,
),
    void Function(
  Pointer<SteamController>,
  ControllerHandle,
  int,
  int,
  int,
  int,
)>("SteamAPI_ISteamController_SetLEDColor");

final _showBindingPanel = dl.lookupFunction<
    Bool Function(
  Pointer<SteamController>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamController>,
  ControllerHandle,
)>("SteamAPI_ISteamController_ShowBindingPanel");

final _getInputTypeForHandle = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamController>,
  UnsignedLongLong,
),
    ESteamInputType Function(
  Pointer<SteamController>,
  ControllerHandle,
)>("SteamAPI_ISteamController_GetInputTypeForHandle");

final _getControllerForGamepadIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamController>,
  Int,
),
    ControllerHandle Function(
  Pointer<SteamController>,
  int,
)>("SteamAPI_ISteamController_GetControllerForGamepadIndex");

final _getGamepadIndexForController = dl.lookupFunction<
    Int Function(
  Pointer<SteamController>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamController>,
  ControllerHandle,
)>("SteamAPI_ISteamController_GetGamepadIndexForController");

final _getStringForXboxOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  EXboxOrigin,
)>("SteamAPI_ISteamController_GetStringForXboxOrigin");

final _getGlyphForXboxOrigin = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  Int32,
),
    Pointer<Utf8> Function(
  Pointer<SteamController>,
  EXboxOrigin,
)>("SteamAPI_ISteamController_GetGlyphForXboxOrigin");

final _getActionOriginFromXboxOrigin = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  Int32,
),
    EControllerActionOrigin Function(
  Pointer<SteamController>,
  ControllerHandle,
  EXboxOrigin,
)>("SteamAPI_ISteamController_GetActionOriginFromXboxOrigin");

final _translateActionOrigin = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamController>,
  Int32,
  Int32,
),
    EControllerActionOrigin Function(
  Pointer<SteamController>,
  ESteamInputType,
  EControllerActionOrigin,
)>("SteamAPI_ISteamController_TranslateActionOrigin");

final _getControllerBindingRevision = dl.lookupFunction<
    Bool Function(
  Pointer<SteamController>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamController>,
  ControllerHandle,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamController_GetControllerBindingRevision");

extension SteamControllerExtensions on Pointer<SteamController> {
  bool init() => _init.call(
        this,
      );

  bool shutdown() => _shutdown.call(
        this,
      );

  void runFrame() => _runFrame.call(
        this,
      );

  int getConnectedControllers(
    Pointer<UnsignedLongLong> handlesOut,
  ) =>
      _getConnectedControllers.call(
        this,
        handlesOut,
      );

  ControllerActionSetHandle getActionSetHandle(
    Pointer<Utf8> pszActionSetName,
  ) =>
      _getActionSetHandle.call(
        this,
        pszActionSetName,
      );

  void activateActionSet(
    ControllerHandle controllerHandle,
    ControllerActionSetHandle actionSetHandle,
  ) =>
      _activateActionSet.call(
        this,
        controllerHandle,
        actionSetHandle,
      );

  ControllerActionSetHandle getCurrentActionSet(
    ControllerHandle controllerHandle,
  ) =>
      _getCurrentActionSet.call(
        this,
        controllerHandle,
      );

  void activateActionSetLayer(
    ControllerHandle controllerHandle,
    ControllerActionSetHandle actionSetLayerHandle,
  ) =>
      _activateActionSetLayer.call(
        this,
        controllerHandle,
        actionSetLayerHandle,
      );

  void deactivateActionSetLayer(
    ControllerHandle controllerHandle,
    ControllerActionSetHandle actionSetLayerHandle,
  ) =>
      _deactivateActionSetLayer.call(
        this,
        controllerHandle,
        actionSetLayerHandle,
      );

  void deactivateAllActionSetLayers(
    ControllerHandle controllerHandle,
  ) =>
      _deactivateAllActionSetLayers.call(
        this,
        controllerHandle,
      );

  int getActiveActionSetLayers(
    ControllerHandle controllerHandle,
    Pointer<UnsignedLongLong> handlesOut,
  ) =>
      _getActiveActionSetLayers.call(
        this,
        controllerHandle,
        handlesOut,
      );

  ControllerDigitalActionHandle getDigitalActionHandle(
    Pointer<Utf8> pszActionName,
  ) =>
      _getDigitalActionHandle.call(
        this,
        pszActionName,
      );

  InputDigitalActionData getDigitalActionData(
    ControllerHandle controllerHandle,
    ControllerDigitalActionHandle digitalActionHandle,
  ) =>
      _getDigitalActionData.call(
        this,
        controllerHandle,
        digitalActionHandle,
      );

  int getDigitalActionOrigins(
    ControllerHandle controllerHandle,
    ControllerActionSetHandle actionSetHandle,
    ControllerDigitalActionHandle digitalActionHandle,
    Pointer<Int32> originsOut,
  ) =>
      _getDigitalActionOrigins.call(
        this,
        controllerHandle,
        actionSetHandle,
        digitalActionHandle,
        originsOut,
      );

  ControllerAnalogActionHandle getAnalogActionHandle(
    Pointer<Utf8> pszActionName,
  ) =>
      _getAnalogActionHandle.call(
        this,
        pszActionName,
      );

  InputAnalogActionData getAnalogActionData(
    ControllerHandle controllerHandle,
    ControllerAnalogActionHandle analogActionHandle,
  ) =>
      _getAnalogActionData.call(
        this,
        controllerHandle,
        analogActionHandle,
      );

  int getAnalogActionOrigins(
    ControllerHandle controllerHandle,
    ControllerActionSetHandle actionSetHandle,
    ControllerAnalogActionHandle analogActionHandle,
    Pointer<Int32> originsOut,
  ) =>
      _getAnalogActionOrigins.call(
        this,
        controllerHandle,
        actionSetHandle,
        analogActionHandle,
        originsOut,
      );

  Pointer<Utf8> getGlyphForActionOrigin(
    EControllerActionOrigin origin,
  ) =>
      _getGlyphForActionOrigin.call(
        this,
        origin,
      );

  Pointer<Utf8> getStringForActionOrigin(
    EControllerActionOrigin origin,
  ) =>
      _getStringForActionOrigin.call(
        this,
        origin,
      );

  void stopAnalogActionMomentum(
    ControllerHandle controllerHandle,
    ControllerAnalogActionHandle action,
  ) =>
      _stopAnalogActionMomentum.call(
        this,
        controllerHandle,
        action,
      );

  InputMotionData getMotionData(
    ControllerHandle controllerHandle,
  ) =>
      _getMotionData.call(
        this,
        controllerHandle,
      );

  void triggerHapticPulse(
    ControllerHandle controllerHandle,
    ESteamControllerPad targetPad,
    int durationMicroSec,
  ) =>
      _triggerHapticPulse.call(
        this,
        controllerHandle,
        targetPad,
        durationMicroSec,
      );

  void triggerRepeatedHapticPulse(
    ControllerHandle controllerHandle,
    ESteamControllerPad targetPad,
    int durationMicroSec,
    int offMicroSec,
    int repeat,
    int nFlags,
  ) =>
      _triggerRepeatedHapticPulse.call(
        this,
        controllerHandle,
        targetPad,
        durationMicroSec,
        offMicroSec,
        repeat,
        nFlags,
      );

  void triggerVibration(
    ControllerHandle controllerHandle,
    int leftSpeed,
    int rightSpeed,
  ) =>
      _triggerVibration.call(
        this,
        controllerHandle,
        leftSpeed,
        rightSpeed,
      );

  void setLedColor(
    ControllerHandle controllerHandle,
    int nColorR,
    int nColorG,
    int nColorB,
    int nFlags,
  ) =>
      _setLedColor.call(
        this,
        controllerHandle,
        nColorR,
        nColorG,
        nColorB,
        nFlags,
      );

  bool showBindingPanel(
    ControllerHandle controllerHandle,
  ) =>
      _showBindingPanel.call(
        this,
        controllerHandle,
      );

  ESteamInputType getInputTypeForHandle(
    ControllerHandle controllerHandle,
  ) =>
      _getInputTypeForHandle.call(
        this,
        controllerHandle,
      );

  ControllerHandle getControllerForGamepadIndex(
    int nIndex,
  ) =>
      _getControllerForGamepadIndex.call(
        this,
        nIndex,
      );

  int getGamepadIndexForController(
    ControllerHandle ulControllerHandle,
  ) =>
      _getGamepadIndexForController.call(
        this,
        ulControllerHandle,
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

  EControllerActionOrigin getActionOriginFromXboxOrigin(
    ControllerHandle controllerHandle,
    EXboxOrigin origin,
  ) =>
      _getActionOriginFromXboxOrigin.call(
        this,
        controllerHandle,
        origin,
      );

  EControllerActionOrigin translateActionOrigin(
    ESteamInputType destinationInputType,
    EControllerActionOrigin sourceOrigin,
  ) =>
      _translateActionOrigin.call(
        this,
        destinationInputType,
        sourceOrigin,
      );

  bool getControllerBindingRevision(
    ControllerHandle controllerHandle,
    Pointer<Int> pMajor,
    Pointer<Int> pMinor,
  ) =>
      _getControllerBindingRevision.call(
        this,
        controllerHandle,
        pMajor,
        pMinor,
      );
}
