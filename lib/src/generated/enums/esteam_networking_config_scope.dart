// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamNetworkingConfigScopeAliasDart = int;
typedef ESteamNetworkingConfigScopeAliasC = Int32;

enum ESteamNetworkingConfigScope {
  global(1),
  socketsInterface(2),
  listenSocket(3),
  connection(4),
  ;

  final int value;

  const ESteamNetworkingConfigScope(this.value);

  factory ESteamNetworkingConfigScope.fromValue(int value) {
    switch (value) {
      case 1:
        return ESteamNetworkingConfigScope.global;
      case 2:
        return ESteamNetworkingConfigScope.socketsInterface;
      case 3:
        return ESteamNetworkingConfigScope.listenSocket;
      case 4:
        return ESteamNetworkingConfigScope.connection;
      default:
        throw "Unknown value for 'ESteamNetworkingConfigScope'. The value was: '$value'";
    }
  }
}
