import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlStartRequest extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  external Pointer<Utf8> pchUrl;

  external Pointer<Utf8> pchTarget;

  external Pointer<Utf8> pchPostData;

  @Bool()
  external bool bIsRedirect;
}
