// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyChatMsg extends Struct {
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
