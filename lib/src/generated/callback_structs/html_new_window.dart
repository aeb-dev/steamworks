import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlNewWindow extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> url;

  @UnsignedInt()
  external int x;

  @UnsignedInt()
  external int y;

  @UnsignedInt()
  external int wide;

  @UnsignedInt()
  external int tall;

  @UnsignedInt()
  external HHtmlBrowser newWindowBrowserHandleIGNORE;
}
