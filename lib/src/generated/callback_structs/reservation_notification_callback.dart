import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class ReservationNotificationCallback extends Struct {
  @UnsignedLongLong()
  external PartyBeaconId beaconId;

  @UnsignedLongLong()
  external CSteamId steamIdJoiner;
}
