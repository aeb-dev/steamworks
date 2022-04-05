// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlHideToolTip extends Struct {
  static int get callbackId => 4526;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;
}

extension HtmlHideToolTipExtensions on Pointer<HtmlHideToolTip> {
  HHtmlBrowser get browserHandle => ref.browserHandle;
}
