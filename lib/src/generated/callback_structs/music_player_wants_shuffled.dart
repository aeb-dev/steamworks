import "dart:ffi";

@Packed(8)
class MusicPlayerWantsShuffled extends Struct {
  @Bool()
  external bool shuffled;
}
