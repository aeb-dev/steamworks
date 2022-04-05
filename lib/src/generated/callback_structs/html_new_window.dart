import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlNewWindow extends Struct {
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
