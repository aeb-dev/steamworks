// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GameRichPresenceJoinRequested extends Struct {
  static int get callbackId => 337;

  @UnsignedLongLong()
  external CSteamId steamIdFriend;

  @Array<Char>(256)
  external Array<Char> connect;
}

extension GameRichPresenceJoinRequestedExtensions
    on Pointer<GameRichPresenceJoinRequested> {
  CSteamId get steamIdFriend => ref.steamIdFriend;

  Array<Char> get connect => ref.connect;
}
