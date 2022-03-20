import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class MusicPlayerWantsPlayingRepeatStatus extends Struct {
  @Int()
  external int playingRepeatStatus;
}
