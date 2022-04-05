import "dart:ffi";

@Packed(4)
class SteamParentalSettingsChanged extends Opaque {
  static int get callbackId => 5001;
}
