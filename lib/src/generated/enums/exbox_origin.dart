// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EXboxOriginAliasDart = int;
typedef EXboxOriginAliasC = Int32;

enum EXboxOrigin {
  a(0),
  b(1),
  x(2),
  y(3),
  leftBumper(4),
  rightBumper(5),
  menu(6),
  view(7),
  leftTriggerPull(8),
  leftTriggerClick(9),
  rightTriggerPull(10),
  rightTriggerClick(11),
  leftStickMove(12),
  leftStickClick(13),
  leftStickDPadNorth(14),
  leftStickDPadSouth(15),
  leftStickDPadWest(16),
  leftStickDPadEast(17),
  rightStickMove(18),
  rightStickClick(19),
  rightStickDPadNorth(20),
  rightStickDPadSouth(21),
  rightStickDPadWest(22),
  rightStickDPadEast(23),
  dPadNorth(24),
  dPadSouth(25),
  dPadWest(26),
  dPadEast(27),
  count(28),
  ;

  final int value;

  const EXboxOrigin(this.value);

  factory EXboxOrigin.fromValue(int value) {
    switch (value) {
      case 0:
        return EXboxOrigin.a;
      case 1:
        return EXboxOrigin.b;
      case 2:
        return EXboxOrigin.x;
      case 3:
        return EXboxOrigin.y;
      case 4:
        return EXboxOrigin.leftBumper;
      case 5:
        return EXboxOrigin.rightBumper;
      case 6:
        return EXboxOrigin.menu;
      case 7:
        return EXboxOrigin.view;
      case 8:
        return EXboxOrigin.leftTriggerPull;
      case 9:
        return EXboxOrigin.leftTriggerClick;
      case 10:
        return EXboxOrigin.rightTriggerPull;
      case 11:
        return EXboxOrigin.rightTriggerClick;
      case 12:
        return EXboxOrigin.leftStickMove;
      case 13:
        return EXboxOrigin.leftStickClick;
      case 14:
        return EXboxOrigin.leftStickDPadNorth;
      case 15:
        return EXboxOrigin.leftStickDPadSouth;
      case 16:
        return EXboxOrigin.leftStickDPadWest;
      case 17:
        return EXboxOrigin.leftStickDPadEast;
      case 18:
        return EXboxOrigin.rightStickMove;
      case 19:
        return EXboxOrigin.rightStickClick;
      case 20:
        return EXboxOrigin.rightStickDPadNorth;
      case 21:
        return EXboxOrigin.rightStickDPadSouth;
      case 22:
        return EXboxOrigin.rightStickDPadWest;
      case 23:
        return EXboxOrigin.rightStickDPadEast;
      case 24:
        return EXboxOrigin.dPadNorth;
      case 25:
        return EXboxOrigin.dPadSouth;
      case 26:
        return EXboxOrigin.dPadWest;
      case 27:
        return EXboxOrigin.dPadEast;
      case 28:
        return EXboxOrigin.count;
      default:
        throw "Unknown value for 'EXboxOrigin'. The value was: '$value'";
    }
  }
}
