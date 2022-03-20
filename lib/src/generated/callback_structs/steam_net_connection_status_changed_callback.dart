import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_steam_networking_connection_state.dart";
import "../structs/steam_net_connection_info.dart";
import "../typedefs.dart";

@Packed(8)
class SteamNetConnectionStatusChangedCallback extends Struct {
  @UnsignedInt()
  external HSteamNetConnection conn;

  external SteamNetConnectionInfo info;

  @Int32()
  external ESteamNetworkingConnectionState oldState;
}
