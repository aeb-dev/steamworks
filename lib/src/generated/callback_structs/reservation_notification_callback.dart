// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class ReservationNotificationCallback extends Struct {
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
