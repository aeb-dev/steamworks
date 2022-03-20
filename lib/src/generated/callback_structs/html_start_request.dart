import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlStartRequest extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> url;

  external Pointer<Utf8> target;

  external Pointer<Utf8> postData;

  @Bool()
  external bool isRedirect;
}
