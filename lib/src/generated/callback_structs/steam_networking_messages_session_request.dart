// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../structs/steam_networking_identity.dart";

@Packed(1)
final class SteamNetworkingMessagesSessionRequest extends Struct {
  static int get callbackId => 1251;

  external SteamNetworkingIdentity identityRemote;
}

extension SteamNetworkingMessagesSessionRequestExtensions
    on Pointer<SteamNetworkingMessagesSessionRequest> {
  SteamNetworkingIdentity get identityRemote => ref.identityRemote;
}
