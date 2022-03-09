import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class ScreenshotReady extends Struct {
  @UnsignedInt()
  external ScreenshotHandle local;

  @Int32()
  external EResult result;
}
