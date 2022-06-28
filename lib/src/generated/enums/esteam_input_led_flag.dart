// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamInputLedFlagAliasDart = int;
typedef ESteamInputLedFlagAliasC = Int32;

enum ESteamInputLedFlag {
  setColor(0),
  restoreUserDefault(1),
  ;

  final int value;

  const ESteamInputLedFlag(this.value);

  factory ESteamInputLedFlag.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputLedFlag.setColor;
      case 1:
        return ESteamInputLedFlag.restoreUserDefault;
      default:
        throw "Unknown value for 'ESteamInputLedFlag'. The value was: '$value'";
    }
  }
}
