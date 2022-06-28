// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

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

extension FriendGameInfoExtensions on Pointer<FriendGameInfo> {
  CGameId get gameId => ref.gameId;

  int get gameIp => ref.gameIp;

  int get gamePort => ref.gamePort;

  int get queryPort => ref.queryPort;

  CSteamId get steamIdLobby => ref.steamIdLobby;
}
