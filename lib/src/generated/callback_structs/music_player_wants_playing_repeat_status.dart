// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class MusicPlayerWantsPlayingRepeatStatus extends Struct {
  static int get callbackId => 4114;

  @Int()
  external int playingRepeatStatus;
}

extension MusicPlayerWantsPlayingRepeatStatusExtensions
    on Pointer<MusicPlayerWantsPlayingRepeatStatus> {
  int get playingRepeatStatus => ref.playingRepeatStatus;
}
