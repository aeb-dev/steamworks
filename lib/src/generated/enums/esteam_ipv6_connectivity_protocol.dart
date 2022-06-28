// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamIpv6ConnectivityProtocolAliasDart = int;
typedef ESteamIpv6ConnectivityProtocolAliasC = Int32;

enum ESteamIpv6ConnectivityProtocol {
  invalid(0),
  http(1),
  udp(2),
  ;

  final int value;

  const ESteamIpv6ConnectivityProtocol(this.value);

  factory ESteamIpv6ConnectivityProtocol.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamIpv6ConnectivityProtocol.invalid;
      case 1:
        return ESteamIpv6ConnectivityProtocol.http;
      case 2:
        return ESteamIpv6ConnectivityProtocol.udp;
      default:
        throw "Unknown value for 'ESteamIpv6ConnectivityProtocol'. The value was: '$value'";
    }
  }
}
