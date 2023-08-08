// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LobbyChatMsg extends Struct {
  static int get callbackId => 507;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdUser;

  @UnsignedChar()
  external int chatEntryType;

  @UnsignedInt()
  external int chatId;
}

extension LobbyChatMsgExtensions on Pointer<LobbyChatMsg> {
  int get steamIdLobby => ref.steamIdLobby;

  int get steamIdUser => ref.steamIdUser;

  int get chatEntryType => ref.chatEntryType;

  int get chatId => ref.chatId;
}
