import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlLinkAtPosition extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  @UnsignedInt()
  external int x;

  @UnsignedInt()
  external int y;

  external Pointer<Utf8> pchUrl;

  @Bool()
  external bool bInput;

  @Bool()
  external bool bLiveLink;
}
