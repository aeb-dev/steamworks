// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class SteamTimelineEventRecordingExists extends Struct {
  static int get callbackId => 6002;

  @UnsignedLongLong()
  external int eventId;

  @Bool()
  external bool recordingExists;
}

extension SteamTimelineEventRecordingExistsExtensions
    on Pointer<SteamTimelineEventRecordingExists> {
  int get eventId => ref.eventId;

  bool get recordingExists => ref.recordingExists;
}
