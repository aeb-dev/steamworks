import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GameConnectedChatLeave extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Bool()
  external bool kicked;

  @Bool()
  external bool dropped;
}
