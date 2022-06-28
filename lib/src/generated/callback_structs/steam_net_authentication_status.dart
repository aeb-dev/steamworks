// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_networking_availability.dart";

@Packed(8)
class SteamNetAuthenticationStatus extends Struct {
  static int get callbackId => 1222;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart avail;

  external Pointer<Utf8> debugMsg;
}

extension SteamNetAuthenticationStatusExtensions
    on Pointer<SteamNetAuthenticationStatus> {
  ESteamNetworkingAvailability get avail =>
      ESteamNetworkingAvailability.fromValue(ref.avail);

  Pointer<Utf8> get debugMsg => ref.debugMsg;
}
