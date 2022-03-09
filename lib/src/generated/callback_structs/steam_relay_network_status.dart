import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_networking_availability.dart";

@Packed(4)
class SteamRelayNetworkStatus extends Struct {
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
