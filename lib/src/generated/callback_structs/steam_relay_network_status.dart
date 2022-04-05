// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_networking_availability.dart";

@Packed(8)
class SteamRelayNetworkStatus extends Struct {
  static int get callbackId => 1281;

  @Int32()
  external ESteamNetworkingAvailability avail;

  @Int()
  external int pingMeasurementInProgress;

  @Int32()
  external ESteamNetworkingAvailability availNetworkConfig;

  @Int32()
  external ESteamNetworkingAvailability availAnyRelay;

  external Pointer<Utf8> debugMsg;
}

extension SteamRelayNetworkStatusExtensions
    on Pointer<SteamRelayNetworkStatus> {
  ESteamNetworkingAvailability get avail => ref.avail;

  int get pingMeasurementInProgress => ref.pingMeasurementInProgress;

  ESteamNetworkingAvailability get availNetworkConfig => ref.availNetworkConfig;

  ESteamNetworkingAvailability get availAnyRelay => ref.availAnyRelay;

  Pointer<Utf8> get debugMsg => ref.debugMsg;
}
