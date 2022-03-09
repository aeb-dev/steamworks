import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class LobbyInvite extends Struct {
  @UnsignedLongLong()
  external int steamIdUser;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int gameId;
}
