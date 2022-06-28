// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamPartyBeaconLocationDataAliasDart = int;
typedef ESteamPartyBeaconLocationDataAliasC = Int32;

enum ESteamPartyBeaconLocationData {
  invalid(0),
  name(1),
  iconUrlSmall(2),
  iconUrlMedium(3),
  iconUrlLarge(4),
  ;

  final int value;

  const ESteamPartyBeaconLocationData(this.value);

  factory ESteamPartyBeaconLocationData.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamPartyBeaconLocationData.invalid;
      case 1:
        return ESteamPartyBeaconLocationData.name;
      case 2:
        return ESteamPartyBeaconLocationData.iconUrlSmall;
      case 3:
        return ESteamPartyBeaconLocationData.iconUrlMedium;
      case 4:
        return ESteamPartyBeaconLocationData.iconUrlLarge;
      default:
        throw "Unknown value for 'ESteamPartyBeaconLocationData'. The value was: '$value'";
    }
  }
}
