import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlBrowserRestarted extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  @UnsignedInt()
  external HHtmlBrowser unOldBrowserHandle;
}
