// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../structs/steam_net_connection_info.dart";

@Packed(1)
class SteamNetworkingMessagesSessionFailed extends Struct {
  static int get callbackId => 1252;

  external SteamNetConnectionInfo info;
}

extension SteamNetworkingMessagesSessionFailedExtensions
    on Pointer<SteamNetworkingMessagesSessionFailed> {
  SteamNetConnectionInfo get info => ref.info;
}
