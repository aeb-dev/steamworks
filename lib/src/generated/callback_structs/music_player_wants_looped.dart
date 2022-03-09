import "dart:ffi";

@Packed(4)
class MusicPlayerWantsLooped extends Struct {
  @Bool()
  external bool looped;
}
