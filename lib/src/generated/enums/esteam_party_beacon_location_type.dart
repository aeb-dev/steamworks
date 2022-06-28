// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamPartyBeaconLocationTypeAliasDart = int;
typedef ESteamPartyBeaconLocationTypeAliasC = Int32;

enum ESteamPartyBeaconLocationType {
  invalid(0),
  chatGroup(1),
  max(2),
  ;

  final int value;

  const ESteamPartyBeaconLocationType(this.value);

  factory ESteamPartyBeaconLocationType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamPartyBeaconLocationType.invalid;
      case 1:
        return ESteamPartyBeaconLocationType.chatGroup;
      case 2:
        return ESteamPartyBeaconLocationType.max;
      default:
        throw "Unknown value for 'ESteamPartyBeaconLocationType'. The value was: '$value'";
    }
  }
}
