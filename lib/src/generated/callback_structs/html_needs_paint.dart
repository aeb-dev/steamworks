import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlNeedsPaint extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  external Pointer<Utf8> pBGRA;

  @UnsignedInt()
  external int unWide;

  @UnsignedInt()
  external int unTall;

  @UnsignedInt()
  external int unUpdateX;

  @UnsignedInt()
  external int unUpdateY;

  @UnsignedInt()
  external int unUpdateWide;

  @UnsignedInt()
  external int unUpdateTall;

  @UnsignedInt()
  external int unScrollX;

  @UnsignedInt()
  external int unScrollY;

  @Float()
  external double flPageScale;

  @UnsignedInt()
  external int unPageSerial;
}
