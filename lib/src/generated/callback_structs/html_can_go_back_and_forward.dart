import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlCanGoBackAndForward extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  @Bool()
  external bool bCanGoBack;

  @Bool()
  external bool bCanGoForward;
}
