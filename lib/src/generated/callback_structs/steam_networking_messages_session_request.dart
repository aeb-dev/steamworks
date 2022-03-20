import "dart:ffi";

import "../structs/steam_networking_identity.dart";

@Packed(1)
class SteamNetworkingMessagesSessionRequest extends Struct {
  external SteamNetworkingIdentity identityRemote;
}
