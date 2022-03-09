import "dart:ffi";

@Packed(4)
class MusicPlayerWantsVolume extends Struct {
  @Float()
  external double newVolume;
}
