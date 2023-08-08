// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HtmlHorizontalScroll extends Struct {
  static int get callbackId => 4511;

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

extension HtmlHorizontalScrollExtensions on Pointer<HtmlHorizontalScroll> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  int get scrollMax => ref.scrollMax;

  int get scrollCurrent => ref.scrollCurrent;

  double get pageScale => ref.pageScale;

  bool get visible => ref.visible;

  int get pageSize => ref.pageSize;
}
