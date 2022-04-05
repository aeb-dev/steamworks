import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlShowToolTip extends Struct {
  static int get callbackId => 4524;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> msg;
}

extension HtmlShowToolTipExtensions on Pointer<HtmlShowToolTip> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get msg => ref.msg;
}
