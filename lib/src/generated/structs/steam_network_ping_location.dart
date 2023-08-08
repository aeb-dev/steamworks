// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class SteamNetworkPingLocation extends Struct {
  @Array<UnsignedChar>(512)
  external Array<UnsignedChar> data;
}

extension SteamNetworkPingLocationExtensions
    on Pointer<SteamNetworkPingLocation> {
  Array<UnsignedChar> get data => ref.data;
}
