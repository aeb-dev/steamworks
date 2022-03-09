import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class LobbyEnter extends Struct {
  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedInt()
  external int gfChatPermissions;

  @Bool()
  external bool locked;

  @UnsignedInt()
  external int eChatRoomEnterResponse;
}
