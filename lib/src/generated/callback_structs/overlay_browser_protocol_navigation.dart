// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

@Packed(8)
class OverlayBrowserProtocolNavigation extends Struct {
  static int get callbackId => 349;

  external Pointer<Utf8> rgchURI;
}

extension OverlayBrowserProtocolNavigationExtensions
    on Pointer<OverlayBrowserProtocolNavigation> {
  Pointer<Utf8> get rgchURI => ref.rgchURI;
}
