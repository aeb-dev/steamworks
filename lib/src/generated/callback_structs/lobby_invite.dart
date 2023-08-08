// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyInvite extends Struct {
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
