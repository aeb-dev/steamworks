import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class OverlayBrowserProtocolNavigation extends Struct {
  external Pointer<Utf8> rgchURI;
}
