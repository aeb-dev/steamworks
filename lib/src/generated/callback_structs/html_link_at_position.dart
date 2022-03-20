import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlLinkAtPosition extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int x;

  @UnsignedInt()
  external int y;

  external Pointer<Utf8> url;

  @Bool()
  external bool input;

  @Bool()
  external bool liveLink;
}
