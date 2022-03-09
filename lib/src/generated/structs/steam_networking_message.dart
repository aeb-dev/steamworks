import "dart:ffi";
import "package:ffi/ffi.dart";
import "../structs/steam_networking_identity.dart";
import "../steam_api.dart";
import "../typedefs.dart";

@Packed(4)
class SteamNetworkingMessage extends Struct {
  external Pointer<Void> pData;

  @Int()
  external int size;

  @UnsignedInt()
  external HSteamNetConnection conn;

  external SteamNetworkingIdentity dentityPeer;

  @LongLong()
  external int connUserData;

  @LongLong()
  external SteamNetworkingMicroseconds ecTimeReceived;

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
  external int dxLane;

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
}
