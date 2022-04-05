import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_party_beacon_location_type.dart";

@Packed(8)
class SteamPartyBeaconLocation extends Struct {
  @Int32()
  external ESteamPartyBeaconLocationType type;

  @UnsignedLongLong()
  external int locationId;
}

extension SteamPartyBeaconLocationExtensions
    on Pointer<SteamPartyBeaconLocation> {
  ESteamPartyBeaconLocationType get type => ref.type;

  int get locationId => ref.locationId;
}
