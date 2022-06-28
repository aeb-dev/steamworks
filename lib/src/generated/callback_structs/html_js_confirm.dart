// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../typedefs.dart";

@Packed(8)
class HtmlJsConfirm extends Struct {
  static int get callbackId => 4515;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> message;
}

extension HtmlJsConfirmExtensions on Pointer<HtmlJsConfirm> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get message => ref.message;
}
