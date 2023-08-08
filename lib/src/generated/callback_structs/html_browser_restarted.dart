// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HtmlBrowserRestarted extends Struct {
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
