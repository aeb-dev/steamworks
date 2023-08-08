// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HtmlCanGoBackAndForward extends Struct {
  static int get callbackId => 4510;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @Bool()
  external bool canGoBack;

  @Bool()
  external bool canGoForward;
}

extension HtmlCanGoBackAndForwardExtensions
    on Pointer<HtmlCanGoBackAndForward> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  bool get canGoBack => ref.canGoBack;

  bool get canGoForward => ref.canGoForward;
}
