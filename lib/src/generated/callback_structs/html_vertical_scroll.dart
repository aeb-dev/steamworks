// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlVerticalScroll extends Struct {
  static int get callbackId => 4512;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int scrollMax;

  @UnsignedInt()
  external int scrollCurrent;

  @Float()
  external double pageScale;

  @Bool()
  external bool visible;

  @UnsignedInt()
  external int pageSize;
}

extension HtmlVerticalScrollExtensions on Pointer<HtmlVerticalScroll> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  int get scrollMax => ref.scrollMax;

  int get scrollCurrent => ref.scrollCurrent;

  double get pageScale => ref.pageScale;

  bool get visible => ref.visible;

  int get pageSize => ref.pageSize;
}
