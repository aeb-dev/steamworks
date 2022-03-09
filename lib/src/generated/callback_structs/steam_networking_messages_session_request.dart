import "dart:ffi";

import "../structs/steam_networking_identity.dart";

@Packed(4)
class SteamNetworkingMessagesSessionRequest extends Struct {
  external SteamNetworkingIdentity dentityRemote;
}
