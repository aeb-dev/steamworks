// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class TimedTrialStatus extends Struct {
  static int get callbackId => 1030;

  @UnsignedInt()
  external AppId appId;

  @Bool()
  external bool isOffline;

  @UnsignedInt()
  external int secondsAllowed;

  @UnsignedInt()
  external int secondsPlayed;
}

extension TimedTrialStatusExtensions on Pointer<TimedTrialStatus> {
  AppId get appId => ref.appId;

  bool get isOffline => ref.isOffline;

  int get secondsAllowed => ref.secondsAllowed;

  int get secondsPlayed => ref.secondsPlayed;
}
