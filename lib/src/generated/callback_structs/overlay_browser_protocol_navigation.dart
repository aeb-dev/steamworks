// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class OverlayBrowserProtocolNavigation extends Struct {
  static int get callbackId => 349;

  @Array<Char>(1024)
  external Array<Char> rgchURI;
}

extension OverlayBrowserProtocolNavigationExtensions
    on Pointer<OverlayBrowserProtocolNavigation> {
  Array<Char> get rgchURI => ref.rgchURI;
}
