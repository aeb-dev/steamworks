import "dart:ffi";

@Packed(4)
class NewUrlLaunchParameters extends Opaque {
  static int get callbackId => 1014;
}
