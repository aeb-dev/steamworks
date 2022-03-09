import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_party_beacon_location_type.dart";

@Packed(4)
class SteamPartyBeaconLocation extends Struct {
  @Int32()
  external ESteamPartyBeaconLocationType type;

  @UnsignedLongLong()
  external int locationId;
}
