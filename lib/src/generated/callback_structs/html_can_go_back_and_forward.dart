// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class HtmlCanGoBackAndForward extends Struct {
  static int get callbackId => 4510;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @Bool()
  external bool canGoBack;

  @Bool()
  external bool canGoForward;
}

extension HtmlCanGoBackAndForwardExtensions
    on Pointer<HtmlCanGoBackAndForward> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  bool get canGoBack => ref.canGoBack;

  bool get canGoForward => ref.canGoForward;
}
