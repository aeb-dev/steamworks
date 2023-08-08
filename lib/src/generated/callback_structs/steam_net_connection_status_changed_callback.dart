// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/esteam_networking_connection_state.dart";
import "../structs/steam_net_connection_info.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamNetConnectionStatusChangedCallback extends Struct {
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
