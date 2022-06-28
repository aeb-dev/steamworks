// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class HtmlSetCursor extends Struct {
  static int get callbackId => 4522;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int mouseCursor;
}

extension HtmlSetCursorExtensions on Pointer<HtmlSetCursor> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  int get mouseCursor => ref.mouseCursor;
}
