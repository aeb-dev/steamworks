import "dart:ffi";
import "package:ffi/ffi.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../enums/e_steam_networking_connection_state.dart";
import "../typedefs.dart";

@Packed(4)
class SteamNetConnectionInfo extends Struct {
  external SteamNetworkingIdentity dentityRemote;

  @LongLong()
  external int userData;

  @UnsignedInt()
  external HSteamListenSocket listenSocket;

  external SteamNetworkingIpAddr addrRemote;

  @UnsignedShort()
  external int pad1;

  @UnsignedInt()
  external SteamNetworkingPOPId dPOPRemote;

  @UnsignedInt()
  external SteamNetworkingPOPId dPOPRelay;

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
