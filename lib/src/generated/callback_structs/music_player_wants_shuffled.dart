import "dart:ffi";

@Packed(4)
class MusicPlayerWantsShuffled extends Struct {
  @Bool()
  external bool shuffled;
}
