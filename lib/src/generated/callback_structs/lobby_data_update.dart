import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class LobbyDataUpdate extends Struct {
  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdMember;

  @UnsignedChar()
  external int success;
}
