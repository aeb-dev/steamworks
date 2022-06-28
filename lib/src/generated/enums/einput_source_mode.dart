// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EInputSourceModeAliasDart = int;
typedef EInputSourceModeAliasC = Int32;

enum EInputSourceMode {
  none(0),
  dpad(1),
  buttons(2),
  fourButtons(3),
  absoluteMouse(4),
  relativeMouse(5),
  joystickMove(6),
  joystickMouse(7),
  joystickCamera(8),
  scrollWheel(9),
  trigger(10),
  touchMenu(11),
  mouseJoystick(12),
  mouseRegion(13),
  radialMenu(14),
  singleButton(15),
  switches(16),
  ;

  final int value;

  const EInputSourceMode(this.value);

  factory EInputSourceMode.fromValue(int value) {
    switch (value) {
      case 0:
        return EInputSourceMode.none;
      case 1:
        return EInputSourceMode.dpad;
      case 2:
        return EInputSourceMode.buttons;
      case 3:
        return EInputSourceMode.fourButtons;
      case 4:
        return EInputSourceMode.absoluteMouse;
      case 5:
        return EInputSourceMode.relativeMouse;
      case 6:
        return EInputSourceMode.joystickMove;
      case 7:
        return EInputSourceMode.joystickMouse;
      case 8:
        return EInputSourceMode.joystickCamera;
      case 9:
        return EInputSourceMode.scrollWheel;
      case 10:
        return EInputSourceMode.trigger;
      case 11:
        return EInputSourceMode.touchMenu;
      case 12:
        return EInputSourceMode.mouseJoystick;
      case 13:
        return EInputSourceMode.mouseRegion;
      case 14:
        return EInputSourceMode.radialMenu;
      case 15:
        return EInputSourceMode.singleButton;
      case 16:
        return EInputSourceMode.switches;
      default:
        throw "Unknown value for 'EInputSourceMode'. The value was: '$value'";
    }
  }
}
