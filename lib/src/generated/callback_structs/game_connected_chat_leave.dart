// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GameConnectedChatLeave extends Struct {
  static int get callbackId => 340;

  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Bool()
  external bool kicked;

  @Bool()
  external bool dropped;
}

extension GameConnectedChatLeaveExtensions on Pointer<GameConnectedChatLeave> {
  CSteamId get steamIdClanChat => ref.steamIdClanChat;

  CSteamId get steamIdUser => ref.steamIdUser;

  bool get kicked => ref.kicked;

  bool get dropped => ref.dropped;
}
