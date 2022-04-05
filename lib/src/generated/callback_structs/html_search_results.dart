import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlSearchResults extends Struct {
  static int get callbackId => 4509;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int results;

  @UnsignedInt()
  external int currentMatch;
}

extension HtmlSearchResultsExtensions on Pointer<HtmlSearchResults> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  int get results => ref.results;

  int get currentMatch => ref.currentMatch;
}
