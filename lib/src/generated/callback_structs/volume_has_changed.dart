import "dart:ffi";

@Packed(4)
class VolumeHasChanged extends Struct {
  @Float()
  external double newVolume;
}
