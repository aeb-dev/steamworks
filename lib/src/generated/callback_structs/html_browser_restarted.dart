import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlBrowserRestarted extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external HHtmlBrowser oldBrowserHandle;
}
