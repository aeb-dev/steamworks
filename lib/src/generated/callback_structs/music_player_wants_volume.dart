// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class MusicPlayerWantsVolume extends Struct {
  static int get callbackId => 4011;

  @Float()
  external double newVolume;
}

extension MusicPlayerWantsVolumeExtensions on Pointer<MusicPlayerWantsVolume> {
  double get newVolume => ref.newVolume;
}
