import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlCloseBrowser extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;
}
