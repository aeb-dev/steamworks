import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_networking_availability.dart";

@Packed(4)
class SteamNetAuthenticationStatus extends Struct {
  @Int32()
  external ESteamNetworkingAvailability avail;

  external Pointer<Utf8> debugMsg;
}
