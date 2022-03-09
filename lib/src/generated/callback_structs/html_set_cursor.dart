import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlSetCursor extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  @UnsignedInt()
  external int eMouseCursor;
}
