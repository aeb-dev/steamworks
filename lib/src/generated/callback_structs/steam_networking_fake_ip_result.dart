import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../structs/steam_networking_identity.dart";

@Packed(8)
class SteamNetworkingFakeIpResult extends Struct {
  static int get callbackId => 1223;

  static int get maxReturnPorts => 8;
  @Int32()
  external EResult result;

  external SteamNetworkingIdentity identity;

  @UnsignedInt()
  external int ip;

  @Array<UnsignedShort>(8)
  external Array<UnsignedShort> ports;
}

extension SteamNetworkingFakeIpResultExtensions
    on Pointer<SteamNetworkingFakeIpResult> {
  EResult get result => ref.result;

  SteamNetworkingIdentity get identity => ref.identity;

  int get ip => ref.ip;

  Array<UnsignedShort> get ports => ref.ports;
}
