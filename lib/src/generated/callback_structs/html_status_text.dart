import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlStatusText extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> msg;
}
