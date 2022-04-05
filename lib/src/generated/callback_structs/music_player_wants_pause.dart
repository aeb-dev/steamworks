import "dart:ffi";

@Packed(8)
class MusicPlayerWantsPause extends Opaque {
  static int get callbackId => 4106;
}
