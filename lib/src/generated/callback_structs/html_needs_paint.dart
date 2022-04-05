// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlNeedsPaint extends Struct {
  static int get callbackId => 4502;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> pBGRA;

  @UnsignedInt()
  external int wide;

  @UnsignedInt()
  external int tall;

  @UnsignedInt()
  external int updateX;

  @UnsignedInt()
  external int updateY;

  @UnsignedInt()
  external int updateWide;

  @UnsignedInt()
  external int updateTall;

  @UnsignedInt()
  external int scrollX;

  @UnsignedInt()
  external int scrollY;

  @Float()
  external double pageScale;

  @UnsignedInt()
  external int pageSerial;
}

extension HtmlNeedsPaintExtensions on Pointer<HtmlNeedsPaint> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get pBGRA => ref.pBGRA;

  int get wide => ref.wide;

  int get tall => ref.tall;

  int get updateX => ref.updateX;

  int get updateY => ref.updateY;

  int get updateWide => ref.updateWide;

  int get updateTall => ref.updateTall;

  int get scrollX => ref.scrollX;

  int get scrollY => ref.scrollY;

  double get pageScale => ref.pageScale;

  int get pageSerial => ref.pageSerial;
}
