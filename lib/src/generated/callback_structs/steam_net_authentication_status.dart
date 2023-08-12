// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/esteam_networking_availability.dart";

@Packed(8)
final class SteamNetAuthenticationStatus extends Struct {
  static int get callbackId => 1222;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart avail;

  @Array<Char>(256)
  external Array<Char> debugMsg;
}

extension SteamNetAuthenticationStatusExtensions
    on Pointer<SteamNetAuthenticationStatus> {
  ESteamNetworkingAvailability get avail =>
      ESteamNetworkingAvailability.fromValue(ref.avail);

  Array<Char> get debugMsg => ref.debugMsg;
}
