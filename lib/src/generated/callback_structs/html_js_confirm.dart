// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
final class HtmlJsConfirm extends Struct {
  static int get callbackId => 4515;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> message;
}

extension HtmlJsConfirmExtensions on Pointer<HtmlJsConfirm> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get message => ref.message;
}
