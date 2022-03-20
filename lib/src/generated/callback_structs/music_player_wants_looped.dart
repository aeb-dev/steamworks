import "dart:ffi";

@Packed(8)
class MusicPlayerWantsLooped extends Struct {
  @Bool()
  external bool looped;
}
