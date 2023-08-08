// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GameConnectedClanChatMsg extends Struct {
  static int get callbackId => 338;

  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int messageId;
}

extension GameConnectedClanChatMsgExtensions
    on Pointer<GameConnectedClanChatMsg> {
  CSteamId get steamIdClanChat => ref.steamIdClanChat;

  CSteamId get steamIdUser => ref.steamIdUser;

  int get messageId => ref.messageId;
}
