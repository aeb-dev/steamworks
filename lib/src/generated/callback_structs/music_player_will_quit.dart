import "dart:ffi";

@Packed(8)
class MusicPlayerWillQuit extends Opaque {
  static int get callbackId => 4104;
}
