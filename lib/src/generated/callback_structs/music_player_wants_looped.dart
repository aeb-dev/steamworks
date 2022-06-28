// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class MusicPlayerWantsLooped extends Struct {
  static int get callbackId => 4110;

  @Bool()
  external bool looped;
}

extension MusicPlayerWantsLoopedExtensions on Pointer<MusicPlayerWantsLooped> {
  bool get looped => ref.looped;
}
