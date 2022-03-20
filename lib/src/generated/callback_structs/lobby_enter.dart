import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyEnter extends Struct {
  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedInt()
  external int chatPermissions;

  @Bool()
  external bool locked;

  @UnsignedInt()
  external int eChatRoomEnterResponse;
}
