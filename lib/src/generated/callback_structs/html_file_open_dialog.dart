// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
final class HtmlFileOpenDialog extends Struct {
  static int get callbackId => 4516;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> title;

  external Pointer<Utf8> initialFile;
}

extension HtmlFileOpenDialogExtensions on Pointer<HtmlFileOpenDialog> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get title => ref.title;

  Pointer<Utf8> get initialFile => ref.initialFile;
}
