// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class MusicPlayerWantsPlayingRepeatStatus extends Struct {
  static int get callbackId => 4114;

  @Int()
  external int playingRepeatStatus;
}

extension MusicPlayerWantsPlayingRepeatStatusExtensions
    on Pointer<MusicPlayerWantsPlayingRepeatStatus> {
  int get playingRepeatStatus => ref.playingRepeatStatus;
}
