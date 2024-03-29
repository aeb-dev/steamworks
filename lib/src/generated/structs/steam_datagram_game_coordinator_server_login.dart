// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../structs/steam_datagram_hosted_address.dart";
import "../structs/steam_networking_identity.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamDatagramGameCoordinatorServerLogin extends Struct {
  external SteamNetworkingIdentity identity;

  external SteamDatagramHostedAddress routing;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external RTime32 rtime;

  @Int()
  external int appDataSize;

  @Array<Char>(2048)
  external Array<Char> appData;
}

extension SteamDatagramGameCoordinatorServerLoginExtensions
    on Pointer<SteamDatagramGameCoordinatorServerLogin> {
  SteamNetworkingIdentity get identity => ref.identity;

  SteamDatagramHostedAddress get routing => ref.routing;

  AppId get appId => ref.appId;

  RTime32 get rtime => ref.rtime;

  int get appDataSize => ref.appDataSize;

  Array<Char> get appData => ref.appData;
}
