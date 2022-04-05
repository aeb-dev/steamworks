import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class P2pSessionState extends Struct {
  @UnsignedChar()
  external int connectionActive;

  @UnsignedChar()
  external int connecting;

  @UnsignedChar()
  external int p2pSessionError;

  @UnsignedChar()
  external int usingRelay;

  @Int()
  external int bytesQueuedForSend;

  @Int()
  external int packetsQueuedForSend;

  @UnsignedInt()
  external int remoteIp;

  @UnsignedShort()
  external int remotePort;
}

extension P2pSessionStateExtensions on Pointer<P2pSessionState> {
  int get connectionActive => ref.connectionActive;

  int get connecting => ref.connecting;

  int get p2pSessionError => ref.p2pSessionError;

  int get usingRelay => ref.usingRelay;

  int get bytesQueuedForSend => ref.bytesQueuedForSend;

  int get packetsQueuedForSend => ref.packetsQueuedForSend;

  int get remoteIp => ref.remoteIp;

  int get remotePort => ref.remotePort;
}
