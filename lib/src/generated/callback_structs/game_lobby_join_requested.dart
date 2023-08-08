// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GameLobbyJoinRequested extends Struct {
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
