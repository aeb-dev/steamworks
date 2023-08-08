// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyEnter extends Struct {
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
