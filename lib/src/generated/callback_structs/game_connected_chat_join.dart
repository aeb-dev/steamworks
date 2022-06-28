// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class GameConnectedChatJoin extends Struct {
  static int get callbackId => 339;

  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}

extension GameConnectedChatJoinExtensions on Pointer<GameConnectedChatJoin> {
  CSteamId get steamIdClanChat => ref.steamIdClanChat;

  CSteamId get steamIdUser => ref.steamIdUser;
}
