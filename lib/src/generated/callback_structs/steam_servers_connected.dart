import "dart:ffi";

@Packed(8)
class SteamServersConnected extends Opaque {
  static int get callbackId => 101;
}
