import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlCanGoBackAndForward extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @Bool()
  external bool canGoBack;

  @Bool()
  external bool canGoForward;
}
