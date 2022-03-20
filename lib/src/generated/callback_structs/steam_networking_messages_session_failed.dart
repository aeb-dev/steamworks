import "dart:ffi";

import "../structs/steam_net_connection_info.dart";

@Packed(1)
class SteamNetworkingMessagesSessionFailed extends Struct {
  external SteamNetConnectionInfo info;
}
