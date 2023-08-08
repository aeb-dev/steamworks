// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
final class HtmlFinishedRequest extends Struct {
  static int get callbackId => 4506;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> url;

  external Pointer<Utf8> pageTitle;
}

extension HtmlFinishedRequestExtensions on Pointer<HtmlFinishedRequest> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get url => ref.url;

  Pointer<Utf8> get pageTitle => ref.pageTitle;
}
