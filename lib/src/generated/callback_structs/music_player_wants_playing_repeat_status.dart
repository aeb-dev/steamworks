import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class MusicPlayerWantsPlayingRepeatStatus extends Struct {
  @Int()
  external int playingRepeatStatus;
}
