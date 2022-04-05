import "dart:ffi";

@Packed(8)
class MusicPlayerRemoteWillDeactivate extends Opaque {
  static int get callbackId => 4102;
}
