import "dart:ffi";

@Packed(8)
class MusicPlayerWantsVolume extends Struct {
  @Float()
  external double newVolume;
}
