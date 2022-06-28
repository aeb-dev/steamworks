// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
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
