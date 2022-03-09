import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlFinishedRequest extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  external Pointer<Utf8> pchUrl;

  external Pointer<Utf8> pchPageTitle;
}
