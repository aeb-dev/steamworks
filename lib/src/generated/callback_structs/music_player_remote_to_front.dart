import "dart:ffi";

@Packed(8)
class MusicPlayerRemoteToFront extends Opaque {
  static int get callbackId => 4103;
}
