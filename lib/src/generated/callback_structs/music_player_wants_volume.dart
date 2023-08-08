// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class MusicPlayerWantsVolume extends Struct {
  static int get callbackId => 4011;

  @Float()
  external double newVolume;
}

extension MusicPlayerWantsVolumeExtensions on Pointer<MusicPlayerWantsVolume> {
  double get newVolume => ref.newVolume;
}
