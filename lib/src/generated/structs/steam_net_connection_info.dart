import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_steam_networking_connection_state.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../typedefs.dart";

@Packed(8)
class SteamNetConnectionInfo extends Struct {
  external SteamNetworkingIdentity identityRemote;

  @LongLong()
  external int userData;

  @UnsignedInt()
  external HSteamListenSocket listenSocket;

  external SteamNetworkingIpAddr addrRemote;

  @UnsignedShort()
  external int pad1;

  @UnsignedInt()
  external SteamNetworkingPopId idPopRemote;

  @UnsignedInt()
  external SteamNetworkingPopId idPopRelay;

  @Int32()
  external ESteamNetworkingConnectionState state;

  @Int()
  external int endReason;

  external Pointer<Utf8> endDebug;

  external Pointer<Utf8> connectionDescription;

  @Int()
  external int flags;

  @Array<UnsignedInt>(63)
  external Array<UnsignedInt> reserved;
}
