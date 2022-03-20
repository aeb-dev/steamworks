import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlBrowserReady extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;
}
