import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";

@Packed(4)
class LobbyCreated extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int steamIdLobby;
}
