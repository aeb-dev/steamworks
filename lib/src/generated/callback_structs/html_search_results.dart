import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class HtmlSearchResults extends Struct {
  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int results;

  @UnsignedInt()
  external int currentMatch;
}
