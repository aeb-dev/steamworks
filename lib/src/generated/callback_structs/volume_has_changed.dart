// ignore_for_file: public_member_api_docs
import "dart:ffi";

@Packed(8)
class VolumeHasChanged extends Struct {
  static int get callbackId => 4002;

  @Float()
  external double newVolume;
}

extension VolumeHasChangedExtensions on Pointer<VolumeHasChanged> {
  double get newVolume => ref.newVolume;
}
