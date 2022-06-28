// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamNetworkingConnectionStateAliasDart = int;
typedef ESteamNetworkingConnectionStateAliasC = Int32;

enum ESteamNetworkingConnectionState {
  dead(-3),
  linger(-2),
  finWait(-1),
  none(0),
  connecting(1),
  findingRoute(2),
  connected(3),
  closedByPeer(4),
  problemDetectedLocally(5),
  ;

  final int value;

  const ESteamNetworkingConnectionState(this.value);

  factory ESteamNetworkingConnectionState.fromValue(int value) {
    switch (value) {
      case -3:
        return ESteamNetworkingConnectionState.dead;
      case -2:
        return ESteamNetworkingConnectionState.linger;
      case -1:
        return ESteamNetworkingConnectionState.finWait;
      case 0:
        return ESteamNetworkingConnectionState.none;
      case 1:
        return ESteamNetworkingConnectionState.connecting;
      case 2:
        return ESteamNetworkingConnectionState.findingRoute;
      case 3:
        return ESteamNetworkingConnectionState.connected;
      case 4:
        return ESteamNetworkingConnectionState.closedByPeer;
      case 5:
        return ESteamNetworkingConnectionState.problemDetectedLocally;
      default:
        throw "Unknown value for 'ESteamNetworkingConnectionState'. The value was: '$value'";
    }
  }
}
