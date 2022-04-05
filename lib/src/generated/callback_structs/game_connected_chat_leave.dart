// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GameConnectedChatLeave extends Struct {
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
