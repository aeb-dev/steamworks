// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamNetworkingSocketsDebugOutputTypeAliasDart = int;
typedef ESteamNetworkingSocketsDebugOutputTypeAliasC = Int32;

enum ESteamNetworkingSocketsDebugOutputType {
  none(0),
  bug(1),
  error(2),
  important(3),
  warning(4),
  msg(5),
  verbose(6),
  debug(7),
  everything(8),
  ;

  final int value;

  const ESteamNetworkingSocketsDebugOutputType(this.value);

  factory ESteamNetworkingSocketsDebugOutputType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamNetworkingSocketsDebugOutputType.none;
      case 1:
        return ESteamNetworkingSocketsDebugOutputType.bug;
      case 2:
        return ESteamNetworkingSocketsDebugOutputType.error;
      case 3:
        return ESteamNetworkingSocketsDebugOutputType.important;
      case 4:
        return ESteamNetworkingSocketsDebugOutputType.warning;
      case 5:
        return ESteamNetworkingSocketsDebugOutputType.msg;
      case 6:
        return ESteamNetworkingSocketsDebugOutputType.verbose;
      case 7:
        return ESteamNetworkingSocketsDebugOutputType.debug;
      case 8:
        return ESteamNetworkingSocketsDebugOutputType.everything;
      default:
        throw "Unknown value for 'ESteamNetworkingSocketsDebugOutputType'. The value was: '$value'";
    }
  }
}
