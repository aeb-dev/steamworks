// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
final class OverlayBrowserProtocolNavigation extends Struct {
  static int get callbackId => 349;

  external Pointer<Utf8> rgchURI;
}

extension OverlayBrowserProtocolNavigationExtensions
    on Pointer<OverlayBrowserProtocolNavigation> {
  Pointer<Utf8> get rgchURI => ref.rgchURI;
}
