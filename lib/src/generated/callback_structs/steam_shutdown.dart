import "dart:ffi";

@Packed(8)
class SteamShutdown extends Opaque {
  static int get callbackId => 704;
}
