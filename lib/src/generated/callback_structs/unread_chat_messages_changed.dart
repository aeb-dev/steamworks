import "dart:ffi";

@Packed(4)
class UnreadChatMessagesChanged extends Opaque {
  static int get callbackId => 348;
}
