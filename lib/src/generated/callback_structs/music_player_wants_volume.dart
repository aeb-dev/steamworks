// ignore_for_file: public_member_api_docs
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
