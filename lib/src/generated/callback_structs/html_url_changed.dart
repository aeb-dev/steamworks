import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlUrlChanged extends Struct {
  static int get callbackId => 4505;

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

extension HtmlUrlChangedExtensions on Pointer<HtmlUrlChanged> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get url => ref.url;

  Pointer<Utf8> get postData => ref.postData;

  bool get isRedirect => ref.isRedirect;

  Pointer<Utf8> get pageTitle => ref.pageTitle;

  bool get newNavigation => ref.newNavigation;
}
