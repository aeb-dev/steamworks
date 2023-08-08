// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/esteam_party_beacon_location_type.dart";

@Packed(8)
final class SteamPartyBeaconLocation extends Struct {
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
