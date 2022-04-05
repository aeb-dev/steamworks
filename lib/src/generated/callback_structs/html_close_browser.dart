// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
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
