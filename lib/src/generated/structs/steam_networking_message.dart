// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../structs/steam_networking_identity.dart";
import "../typedefs.dart";

@Packed(4)
class SteamNetworkingMessage extends Struct {
  external Pointer<Void> pData;

  @Int()
  external int size;

  @UnsignedInt()
  external HSteamNetConnection conn;

  external SteamNetworkingIdentity identityPeer;

  @LongLong()
  external int connUserData;

  @LongLong()
  external SteamNetworkingMicroseconds timeReceived;

  @LongLong()
  external int messageNumber;

  external Pointer<
      NativeFunction<
          Pointer<Void> Function(Pointer<SteamNetworkingMessage>)>> pfnFreeData;

  external Pointer<
      NativeFunction<
          Pointer<Void> Function(Pointer<SteamNetworkingMessage>)>> pfnRelease;

  @Int()
  external int channel;

  @Int()
  external int flags;

  @LongLong()
  external int userData;

  @UnsignedShort()
  external int idxLane;

  @UnsignedShort()
  external int pad1;
}

final _release = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingMessage>,
),
    void Function(
  Pointer<SteamNetworkingMessage>,
)>("SteamAPI_SteamNetworkingMessage_t_Release");

extension SteamNetworkingMessageExtensions on Pointer<SteamNetworkingMessage> {
  void release() => _release.call(
        this,
      );

  Pointer<Void> get pData => ref.pData;

  int get size => ref.size;

  HSteamNetConnection get conn => ref.conn;

  SteamNetworkingIdentity get identityPeer => ref.identityPeer;

  int get connUserData => ref.connUserData;

  SteamNetworkingMicroseconds get timeReceived => ref.timeReceived;

  int get messageNumber => ref.messageNumber;

  Pointer<
          NativeFunction<
              Pointer<Void> Function(Pointer<SteamNetworkingMessage>)>>
      get pfnFreeData => ref.pfnFreeData;

  Pointer<
          NativeFunction<
              Pointer<Void> Function(Pointer<SteamNetworkingMessage>)>>
      get pfnRelease => ref.pfnRelease;

  int get channel => ref.channel;

  int get flags => ref.flags;

  int get userData => ref.userData;

  int get idxLane => ref.idxLane;

  int get pad1 => ref.pad1;
}
