import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GameConnectedClanChatMsg extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int messageId;
}
