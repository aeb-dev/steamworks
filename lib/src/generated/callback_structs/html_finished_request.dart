// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../typedefs.dart";

@Packed(8)
class HtmlFinishedRequest extends Struct {
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
