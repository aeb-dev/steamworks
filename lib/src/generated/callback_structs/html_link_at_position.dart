// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
final class HtmlLinkAtPosition extends Struct {
  static int get callbackId => 4513;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int x;

  @UnsignedInt()
  external int y;

  external Pointer<Utf8> url;

  @Bool()
  external bool input;

  @Bool()
  external bool liveLink;
}

extension HtmlLinkAtPositionExtensions on Pointer<HtmlLinkAtPosition> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  int get x => ref.x;

  int get y => ref.y;

  Pointer<Utf8> get url => ref.url;

  bool get input => ref.input;

  bool get liveLink => ref.liveLink;
}
