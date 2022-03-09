import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlHorizontalScroll extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  @UnsignedInt()
  external int unScrollMax;

  @UnsignedInt()
  external int unScrollCurrent;

  @Float()
  external double flPageScale;

  @Bool()
  external bool bVisible;

  @UnsignedInt()
  external int unPageSize;
}
