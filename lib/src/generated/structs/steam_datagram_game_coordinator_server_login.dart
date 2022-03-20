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
