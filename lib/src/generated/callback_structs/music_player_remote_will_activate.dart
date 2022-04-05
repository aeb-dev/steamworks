import "dart:ffi";

@Packed(8)
class MusicPlayerRemoteWillActivate extends Opaque {
  static int get callbackId => 4101;
}
