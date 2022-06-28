// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/esteam_networking_connection_state.dart";
import "../structs/steam_net_connection_info.dart";
import "../typedefs.dart";

@Packed(8)
class SteamNetConnectionStatusChangedCallback extends Struct {
  static int get callbackId => 1221;

  @UnsignedInt()
  external HSteamNetConnection conn;

  external SteamNetConnectionInfo info;

  @Int32()
  external ESteamNetworkingConnectionStateAliasDart oldState;
}

extension SteamNetConnectionStatusChangedCallbackExtensions
    on Pointer<SteamNetConnectionStatusChangedCallback> {
  HSteamNetConnection get conn => ref.conn;

  SteamNetConnectionInfo get info => ref.info;

  ESteamNetworkingConnectionState get oldState =>
      ESteamNetworkingConnectionState.fromValue(ref.oldState);
}
