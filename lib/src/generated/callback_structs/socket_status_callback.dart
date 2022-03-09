import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SocketStatusCallback extends Struct {
  @UnsignedInt()
  external SnetSocket socket;

  @UnsignedInt()
  external SnetListenSocket listenSocket;

  @UnsignedLongLong()
  external CSteamId steamIdRemote;

  @Int()
  external int snetSocketState;
}
