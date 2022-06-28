// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamControllerLedFlagAliasDart = int;
typedef ESteamControllerLedFlagAliasC = Int32;

enum ESteamControllerLedFlag {
  setColor(0),
  restoreUserDefault(1),
  ;

  final int value;

  const ESteamControllerLedFlag(this.value);

  factory ESteamControllerLedFlag.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamControllerLedFlag.setColor;
      case 1:
        return ESteamControllerLedFlag.restoreUserDefault;
      default:
        throw "Unknown value for 'ESteamControllerLedFlag'. The value was: '$value'";
    }
  }
}
