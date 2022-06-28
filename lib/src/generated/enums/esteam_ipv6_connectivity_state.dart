// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamIpv6ConnectivityStateAliasDart = int;
typedef ESteamIpv6ConnectivityStateAliasC = Int32;

enum ESteamIpv6ConnectivityState {
  unknown(0),
  good(1),
  bad(2),
  ;

  final int value;

  const ESteamIpv6ConnectivityState(this.value);

  factory ESteamIpv6ConnectivityState.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamIpv6ConnectivityState.unknown;
      case 1:
        return ESteamIpv6ConnectivityState.good;
      case 2:
        return ESteamIpv6ConnectivityState.bad;
      default:
        throw "Unknown value for 'ESteamIpv6ConnectivityState'. The value was: '$value'";
    }
  }
}
