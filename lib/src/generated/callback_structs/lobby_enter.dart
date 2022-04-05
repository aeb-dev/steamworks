import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyEnter extends Struct {
  static int get callbackId => 504;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedInt()
  external int chatPermissions;

  @Bool()
  external bool locked;

  @UnsignedInt()
  external int eChatRoomEnterResponse;
}

extension LobbyEnterExtensions on Pointer<LobbyEnter> {
  int get steamIdLobby => ref.steamIdLobby;

  int get chatPermissions => ref.chatPermissions;

  bool get locked => ref.locked;

  int get eChatRoomEnterResponse => ref.eChatRoomEnterResponse;
}
