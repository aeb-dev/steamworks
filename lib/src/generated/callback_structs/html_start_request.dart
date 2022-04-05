import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlStartRequest extends Struct {
  static int get callbackId => 4503;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> url;

  external Pointer<Utf8> target;

  external Pointer<Utf8> postData;

  @Bool()
  external bool isRedirect;
}

extension HtmlStartRequestExtensions on Pointer<HtmlStartRequest> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get url => ref.url;

  Pointer<Utf8> get target => ref.target;

  Pointer<Utf8> get postData => ref.postData;

  bool get isRedirect => ref.isRedirect;
}
