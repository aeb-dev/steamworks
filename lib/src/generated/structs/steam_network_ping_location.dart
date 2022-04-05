// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class SteamNetworkPingLocation extends Struct {
  @Array<UnsignedChar>(512)
  external Array<UnsignedChar> data;
}

extension SteamNetworkPingLocationExtensions
    on Pointer<SteamNetworkPingLocation> {
  Array<UnsignedChar> get data => ref.data;
}
