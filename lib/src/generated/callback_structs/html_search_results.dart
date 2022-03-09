import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlSearchResults extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  @UnsignedInt()
  external int unResults;

  @UnsignedInt()
  external int unCurrentMatch;
}
