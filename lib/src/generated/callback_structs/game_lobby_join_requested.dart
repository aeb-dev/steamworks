// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class GameLobbyJoinRequested extends Struct {
  static int get callbackId => 333;

  @UnsignedLongLong()
  external CSteamId steamIdLobby;

  @UnsignedLongLong()
  external CSteamId steamIdFriend;
}

extension GameLobbyJoinRequestedExtensions on Pointer<GameLobbyJoinRequested> {
  CSteamId get steamIdLobby => ref.steamIdLobby;

  CSteamId get steamIdFriend => ref.steamIdFriend;
}
