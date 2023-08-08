// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GameConnectedFriendChatMsg extends Struct {
  static int get callbackId => 343;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int messageId;
}

extension GameConnectedFriendChatMsgExtensions
    on Pointer<GameConnectedFriendChatMsg> {
  CSteamId get steamIdUser => ref.steamIdUser;

  int get messageId => ref.messageId;
}
