import "dart:ffi";

@Packed(8)
class ScreenshotRequested extends Opaque {
  static int get callbackId => 2302;
}
