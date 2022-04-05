import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_networking_availability.dart";

@Packed(8)
class SteamNetAuthenticationStatus extends Struct {
  static int get callbackId => 1222;

  @Int32()
  external ESteamNetworkingAvailability avail;

  external Pointer<Utf8> debugMsg;
}

extension SteamNetAuthenticationStatusExtensions
    on Pointer<SteamNetAuthenticationStatus> {
  ESteamNetworkingAvailability get avail => ref.avail;

  Pointer<Utf8> get debugMsg => ref.debugMsg;
}
