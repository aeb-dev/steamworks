// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class HtmlCloseBrowser extends Struct {
  static int get callbackId => 4504;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;
}

extension HtmlCloseBrowserExtensions on Pointer<HtmlCloseBrowser> {
  HHtmlBrowser get browserHandle => ref.browserHandle;
}
