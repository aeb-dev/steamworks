import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlNeedsPaint extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> pBGRA;

  @UnsignedInt()
  external int wide;

  @UnsignedInt()
  external int tall;

  @UnsignedInt()
  external int updateX;

  @UnsignedInt()
  external int updateY;

  @UnsignedInt()
  external int updateWide;

  @UnsignedInt()
  external int updateTall;

  @UnsignedInt()
  external int scrollX;

  @UnsignedInt()
  external int scrollY;

  @Float()
  external double pageScale;

  @UnsignedInt()
  external int pageSerial;
}
