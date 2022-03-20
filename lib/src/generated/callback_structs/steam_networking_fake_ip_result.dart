import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../structs/steam_networking_identity.dart";

@Packed(8)
class SteamNetworkingFakeIpResult extends Struct {
  static const int maxReturnPorts = 8;
  @Int32()
  external EResult result;

  external SteamNetworkingIdentity identity;

  @UnsignedInt()
  external int ip;

  @Array<UnsignedShort>(8)
  external Array<UnsignedShort> ports;
}
