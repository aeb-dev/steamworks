import "dart:ffi";

@Packed(8)
class MusicPlayerWantsPlay extends Opaque {
  static int get callbackId => 4105;
}
