import "dart:ffi";

@Packed(8)
class VolumeHasChanged extends Struct {
  @Float()
  external double newVolume;
}
