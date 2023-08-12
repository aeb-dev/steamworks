// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/esteam_networking_availability.dart";

@Packed(8)
final class SteamRelayNetworkStatus extends Struct {
  static int get callbackId => 1281;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart avail;

  @Int()
  external int pingMeasurementInProgress;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart availNetworkConfig;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart availAnyRelay;

  @Array<Char>(256)
  external Array<Char> debugMsg;
}

extension SteamRelayNetworkStatusExtensions
    on Pointer<SteamRelayNetworkStatus> {
  ESteamNetworkingAvailability get avail =>
      ESteamNetworkingAvailability.fromValue(ref.avail);

  int get pingMeasurementInProgress => ref.pingMeasurementInProgress;

  ESteamNetworkingAvailability get availNetworkConfig =>
      ESteamNetworkingAvailability.fromValue(ref.availNetworkConfig);

  ESteamNetworkingAvailability get availAnyRelay =>
      ESteamNetworkingAvailability.fromValue(ref.availAnyRelay);

  Array<Char> get debugMsg => ref.debugMsg;
}
