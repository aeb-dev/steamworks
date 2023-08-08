// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HtmlHideToolTip extends Struct {
  static int get callbackId => 4526;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;
}

extension HtmlHideToolTipExtensions on Pointer<HtmlHideToolTip> {
  HHtmlBrowser get browserHandle => ref.browserHandle;
}
