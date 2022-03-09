import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GameConnectedFriendChatMsg extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int messageId;
}
