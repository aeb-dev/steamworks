import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class ReservationNotificationCallback extends Struct {
  static int get callbackId => 5303;

  @UnsignedLongLong()
  external PartyBeaconId beaconId;

  @UnsignedLongLong()
  external CSteamId steamIdJoiner;
}

extension ReservationNotificationCallbackExtensions
    on Pointer<ReservationNotificationCallback> {
  PartyBeaconId get beaconId => ref.beaconId;

  CSteamId get steamIdJoiner => ref.steamIdJoiner;
}
