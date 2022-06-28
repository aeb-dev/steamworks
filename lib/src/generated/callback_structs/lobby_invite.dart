// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class LobbyInvite extends Struct {
  static int get callbackId => 503;

  @UnsignedLongLong()
  external int steamIdUser;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int gameId;
}

extension LobbyInviteExtensions on Pointer<LobbyInvite> {
  int get steamIdUser => ref.steamIdUser;

  int get steamIdLobby => ref.steamIdLobby;

  int get gameId => ref.gameId;
}
