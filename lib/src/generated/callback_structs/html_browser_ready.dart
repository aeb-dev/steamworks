import "dart:ffi";
import "package:ffi/ffi.dart";
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
