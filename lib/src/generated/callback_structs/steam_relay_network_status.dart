// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_networking_availability.dart";

@Packed(8)
class SteamRelayNetworkStatus extends Struct {
  static int get callbackId => 1281;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart avail;

  @Int()
  external int pingMeasurementInProgress;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart availNetworkConfig;

  @Int32()
  external ESteamNetworkingAvailabilityAliasDart availAnyRelay;

  external Pointer<Utf8> debugMsg;
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

  Pointer<Utf8> get debugMsg => ref.debugMsg;
}
