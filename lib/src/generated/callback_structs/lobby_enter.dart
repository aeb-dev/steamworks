// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

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
