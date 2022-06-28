// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../structs/steam_datagram_hosted_address.dart";
import "../structs/steam_networking_identity.dart";
import "../typedefs.dart";

@Packed(8)
class SteamDatagramGameCoordinatorServerLogin extends Struct {
  external SteamNetworkingIdentity identity;

  external SteamDatagramHostedAddress routing;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external RTime32 rtime;

  @Int()
  external int appDataSize;

  external Pointer<Utf8> appData;
}

extension SteamDatagramGameCoordinatorServerLoginExtensions
    on Pointer<SteamDatagramGameCoordinatorServerLogin> {
  SteamNetworkingIdentity get identity => ref.identity;

  SteamDatagramHostedAddress get routing => ref.routing;

  AppId get appId => ref.appId;

  RTime32 get rtime => ref.rtime;

  int get appDataSize => ref.appDataSize;

  Pointer<Utf8> get appData => ref.appData;
}
