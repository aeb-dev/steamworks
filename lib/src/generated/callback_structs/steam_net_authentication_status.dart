// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_networking_availability.dart";

@Packed(8)
final class SteamNetAuthenticationStatus extends Struct {
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
