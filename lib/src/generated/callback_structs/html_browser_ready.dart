// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class HtmlBrowserReady extends Struct {
  static int get callbackId => 4501;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;
}

extension HtmlBrowserReadyExtensions on Pointer<HtmlBrowserReady> {
  HHtmlBrowser get browserHandle => ref.browserHandle;
}
