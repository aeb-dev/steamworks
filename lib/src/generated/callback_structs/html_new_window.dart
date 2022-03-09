import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlNewWindow extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  external Pointer<Utf8> pchUrl;

  @UnsignedInt()
  external int unX;

  @UnsignedInt()
  external int unY;

  @UnsignedInt()
  external int unWide;

  @UnsignedInt()
  external int unTall;

  @UnsignedInt()
  external HHtmlBrowser unNewWindowBrowserHandleIGNORE;
}
