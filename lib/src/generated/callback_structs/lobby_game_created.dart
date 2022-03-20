import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyGameCreated extends Struct {
  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdGameServer;

  @UnsignedInt()
  external int ip;

  @UnsignedShort()
  external int port;
}
