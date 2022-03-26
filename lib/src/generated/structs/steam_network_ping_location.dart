import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class SteamNetworkPingLocation extends Struct {
  @Array<UnsignedChar>(512)
  external Array<UnsignedChar> data;
}