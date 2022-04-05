import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlFileOpenDialog extends Struct {
  static int get callbackId => 4516;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> title;

  external Pointer<Utf8> initialFile;
}

extension HtmlFileOpenDialogExtensions on Pointer<HtmlFileOpenDialog> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get title => ref.title;

  Pointer<Utf8> get initialFile => ref.initialFile;
}
