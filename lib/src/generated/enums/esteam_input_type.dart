// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamInputTypeAliasDart = int;
typedef ESteamInputTypeAliasC = Int32;

enum ESteamInputType {
  unknown(0),
  steamController(1),
  xBox360Controller(2),
  xBoxOneController(3),
  genericGamepad(4),
  ps4Controller(5),
  appleMFiController(6),
  androidController(7),
  switchJoyConPair(8),
  switchJoyConSingle(9),
  switchProController(10),
  mobileTouch(11),
  ps3Controller(12),
  ps5Controller(13),
  steamDeckController(14),
  count(15),
  maximumPossibleValue(255),
  ;

  final int value;

  const ESteamInputType(this.value);

  factory ESteamInputType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputType.unknown;
      case 1:
        return ESteamInputType.steamController;
      case 2:
        return ESteamInputType.xBox360Controller;
      case 3:
        return ESteamInputType.xBoxOneController;
      case 4:
        return ESteamInputType.genericGamepad;
      case 5:
        return ESteamInputType.ps4Controller;
      case 6:
        return ESteamInputType.appleMFiController;
      case 7:
        return ESteamInputType.androidController;
      case 8:
        return ESteamInputType.switchJoyConPair;
      case 9:
        return ESteamInputType.switchJoyConSingle;
      case 10:
        return ESteamInputType.switchProController;
      case 11:
        return ESteamInputType.mobileTouch;
      case 12:
        return ESteamInputType.ps3Controller;
      case 13:
        return ESteamInputType.ps5Controller;
      case 14:
        return ESteamInputType.steamDeckController;
      case 15:
        return ESteamInputType.count;
      case 255:
        return ESteamInputType.maximumPossibleValue;
      default:
        throw "Unknown value for 'ESteamInputType'. The value was: '$value'";
    }
  }
}
