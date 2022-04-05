// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../structs/steam_networking_identity.dart";

@Packed(1)
class SteamNetworkingMessagesSessionRequest extends Struct {
  static int get callbackId => 1251;

  external SteamNetworkingIdentity identityRemote;
}

extension SteamNetworkingMessagesSessionRequestExtensions
    on Pointer<SteamNetworkingMessagesSessionRequest> {
  SteamNetworkingIdentity get identityRemote => ref.identityRemote;
}
