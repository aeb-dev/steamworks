import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
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
