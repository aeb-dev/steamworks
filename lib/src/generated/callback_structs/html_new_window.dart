// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
final class HtmlNewWindow extends Struct {
  static int get callbackId => 4521;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> url;

  @UnsignedInt()
  external int x;

  @UnsignedInt()
  external int y;

  @UnsignedInt()
  external int wide;

  @UnsignedInt()
  external int tall;

  @UnsignedInt()
  external HHtmlBrowser newWindowBrowserHandleIGNORE;
}

extension HtmlNewWindowExtensions on Pointer<HtmlNewWindow> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get url => ref.url;

  int get x => ref.x;

  int get y => ref.y;

  int get wide => ref.wide;

  int get tall => ref.tall;

  HHtmlBrowser get newWindowBrowserHandleIGNORE =>
      ref.newWindowBrowserHandleIGNORE;
}
