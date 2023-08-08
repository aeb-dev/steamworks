// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HtmlSetCursor extends Struct {
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
