import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyChatMsg extends Struct {
  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdUser;

  @UnsignedChar()
  external int chatEntryType;

  @UnsignedInt()
  external int chatId;
}
