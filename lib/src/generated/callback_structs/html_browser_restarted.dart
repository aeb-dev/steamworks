// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlBrowserRestarted extends Struct {
  static int get callbackId => 4527;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external HHtmlBrowser oldBrowserHandle;
}

extension HtmlBrowserRestartedExtensions on Pointer<HtmlBrowserRestarted> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  HHtmlBrowser get oldBrowserHandle => ref.oldBrowserHandle;
}
