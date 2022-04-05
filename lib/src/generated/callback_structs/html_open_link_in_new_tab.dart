import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlOpenLinkInNewTab extends Struct {
  static int get callbackId => 4507;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> url;
}

extension HtmlOpenLinkInNewTabExtensions on Pointer<HtmlOpenLinkInNewTab> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get url => ref.url;
}
