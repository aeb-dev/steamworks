// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/esteam_party_beacon_location_type.dart";

@Packed(8)
class SteamPartyBeaconLocation extends Struct {
  @Int32()
  external ESteamPartyBeaconLocationTypeAliasDart type;

  @UnsignedLongLong()
  external int locationId;
}

extension SteamPartyBeaconLocationExtensions
    on Pointer<SteamPartyBeaconLocation> {
  ESteamPartyBeaconLocationType get type =>
      ESteamPartyBeaconLocationType.fromValue(ref.type);

  int get locationId => ref.locationId;
}
