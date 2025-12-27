// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class SteamTimelineGamePhaseRecordingExists extends Struct {
  static int get callbackId => 6001;

  @Array<Char>(64)
  external Array<Char> phaseId;

  @UnsignedLongLong()
  external int recordingMS;

  @UnsignedLongLong()
  external int longestClipMS;

  @UnsignedInt()
  external int clipCount;

  @UnsignedInt()
  external int screenshotCount;
}

extension SteamTimelineGamePhaseRecordingExistsExtensions
    on Pointer<SteamTimelineGamePhaseRecordingExists> {
  Array<Char> get phaseId => ref.phaseId;

  int get recordingMS => ref.recordingMS;

  int get longestClipMS => ref.longestClipMS;

  int get clipCount => ref.clipCount;

  int get screenshotCount => ref.screenshotCount;
}
