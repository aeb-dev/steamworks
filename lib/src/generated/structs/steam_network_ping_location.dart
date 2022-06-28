// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(4)
class SteamNetworkPingLocation extends Struct {
  @Array<UnsignedChar>(512)
  external Array<UnsignedChar> data;
}

extension SteamNetworkPingLocationExtensions
    on Pointer<SteamNetworkPingLocation> {
  Array<UnsignedChar> get data => ref.data;
}
