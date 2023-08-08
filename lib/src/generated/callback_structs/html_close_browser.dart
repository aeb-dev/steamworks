// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HtmlCloseBrowser extends Struct {
  static int get callbackId => 4504;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;
}

extension HtmlCloseBrowserExtensions on Pointer<HtmlCloseBrowser> {
  HHtmlBrowser get browserHandle => ref.browserHandle;
}
