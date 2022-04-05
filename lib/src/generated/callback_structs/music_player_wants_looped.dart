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
