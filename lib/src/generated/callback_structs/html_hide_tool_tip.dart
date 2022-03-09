import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlHideToolTip extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;
}
