import "dart:ffi";

@Packed(8)
class PlaybackStatusHasChanged extends Opaque {
  static int get callbackId => 4001;
}
