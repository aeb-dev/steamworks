import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class FriendGameInfo extends Struct {
  @UnsignedLongLong()
  external CGameId gameId;

  @UnsignedInt()
  external int gameIp;

  @UnsignedShort()
  external int gamePort;

  @UnsignedShort()
  external int queryPort;

  @UnsignedLongLong()
  external CSteamId steamIdLobby;
}
