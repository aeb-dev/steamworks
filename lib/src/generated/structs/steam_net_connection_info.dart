// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_networking_connection_state.dart";
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
  external ESteamNetworkingConnectionStateAliasDart state;

  @Int()
  external int endReason;

  external Pointer<Utf8> endDebug;

  external Pointer<Utf8> connectionDescription;

  @Int()
  external int flags;

  @Array<UnsignedInt>(63)
  external Array<UnsignedInt> reserved;
}

extension SteamNetConnectionInfoExtensions on Pointer<SteamNetConnectionInfo> {
  SteamNetworkingIdentity get identityRemote => ref.identityRemote;

  int get userData => ref.userData;

  HSteamListenSocket get listenSocket => ref.listenSocket;

  SteamNetworkingIpAddr get addrRemote => ref.addrRemote;

  int get pad1 => ref.pad1;

  SteamNetworkingPopId get idPopRemote => ref.idPopRemote;

  SteamNetworkingPopId get idPopRelay => ref.idPopRelay;

  ESteamNetworkingConnectionState get state =>
      ESteamNetworkingConnectionState.fromValue(ref.state);

  int get endReason => ref.endReason;

  Pointer<Utf8> get endDebug => ref.endDebug;

  Pointer<Utf8> get connectionDescription => ref.connectionDescription;

  int get flags => ref.flags;

  Array<UnsignedInt> get reserved => ref.reserved;
}
