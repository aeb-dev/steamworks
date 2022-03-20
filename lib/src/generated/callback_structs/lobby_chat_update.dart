import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyChatUpdate extends Struct {
  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdUserChanged;

  @UnsignedLongLong()
  external int steamIdMakingChange;

  @UnsignedInt()
  external int chatMemberStateChange;
}
