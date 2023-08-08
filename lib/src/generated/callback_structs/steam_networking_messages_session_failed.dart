// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../structs/steam_net_connection_info.dart";

@Packed(8)
final class SteamNetworkingMessagesSessionFailed extends Struct {
  static int get callbackId => 1252;

  external SteamNetConnectionInfo info;
}

extension SteamNetworkingMessagesSessionFailedExtensions
    on Pointer<SteamNetworkingMessagesSessionFailed> {
  SteamNetConnectionInfo get info => ref.info;
}
