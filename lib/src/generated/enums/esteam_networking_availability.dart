// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamNetworkingAvailabilityAliasDart = int;
typedef ESteamNetworkingAvailabilityAliasC = Int32;

enum ESteamNetworkingAvailability {
  cannotTry(-102),
  failed(-101),
  previously(-100),
  retrying(-10),
  unknown(0),
  neverTried(1),
  waiting(2),
  attempting(3),
  current(100),
  force32bit(2147483647),
  ;

  final int value;

  const ESteamNetworkingAvailability(this.value);

  factory ESteamNetworkingAvailability.fromValue(int value) {
    switch (value) {
      case -102:
        return ESteamNetworkingAvailability.cannotTry;
      case -101:
        return ESteamNetworkingAvailability.failed;
      case -100:
        return ESteamNetworkingAvailability.previously;
      case -10:
        return ESteamNetworkingAvailability.retrying;
      case 0:
        return ESteamNetworkingAvailability.unknown;
      case 1:
        return ESteamNetworkingAvailability.neverTried;
      case 2:
        return ESteamNetworkingAvailability.waiting;
      case 3:
        return ESteamNetworkingAvailability.attempting;
      case 100:
        return ESteamNetworkingAvailability.current;
      case 2147483647:
        return ESteamNetworkingAvailability.force32bit;
      default:
        throw "Unknown value for 'ESteamNetworkingAvailability'. The value was: '$value'";
    }
  }
}
