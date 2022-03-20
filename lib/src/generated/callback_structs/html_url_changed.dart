import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlUrlChanged extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> url;

  external Pointer<Utf8> postData;

  @Bool()
  external bool isRedirect;

  external Pointer<Utf8> pageTitle;

  @Bool()
  external bool newNavigation;
}
