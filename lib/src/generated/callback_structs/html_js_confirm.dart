import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlJsConfirm extends Struct {
  @UnsignedInt()
  external HHtmlBrowser unBrowserHandle;

  external Pointer<Utf8> pchMessage;
}
