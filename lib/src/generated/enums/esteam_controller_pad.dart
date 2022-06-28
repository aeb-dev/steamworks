// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamControllerPadAliasDart = int;
typedef ESteamControllerPadAliasC = Int32;

enum ESteamControllerPad {
  left(0),
  right(1),
  ;

  final int value;

  const ESteamControllerPad(this.value);

  factory ESteamControllerPad.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamControllerPad.left;
      case 1:
        return ESteamControllerPad.right;
      default:
        throw "Unknown value for 'ESteamControllerPad'. The value was: '$value'";
    }
  }
}
