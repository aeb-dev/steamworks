// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../typedefs.dart";

@Packed(8)
class HtmlLinkAtPosition extends Struct {
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
