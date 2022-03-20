import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlHorizontalScroll extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int scrollMax;

  @UnsignedInt()
  external int scrollCurrent;

  @Float()
  external double pageScale;

  @Bool()
  external bool visible;

  @UnsignedInt()
  external int pageSize;
}
