import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GameLobbyJoinRequested extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdLobby;

  @UnsignedLongLong()
  external CSteamId steamIdFriend;
}
