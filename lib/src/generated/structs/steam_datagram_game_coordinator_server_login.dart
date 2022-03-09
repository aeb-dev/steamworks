import "dart:ffi";

import "package:ffi/ffi.dart";

import "../structs/steam_datagram_hosted_address.dart";
import "../structs/steam_networking_identity.dart";
import "../typedefs.dart";

@Packed(4)
class SteamDatagramGameCoordinatorServerLogin extends Struct {
  external SteamNetworkingIdentity dentity;

  external SteamDatagramHostedAddress outing;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external RTime32 time;

  @Int()
  external int appDataSize;

  external Pointer<Utf8> appData;
}
