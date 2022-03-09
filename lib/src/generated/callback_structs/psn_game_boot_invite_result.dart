import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class PsnGameBootInviteResult extends Struct {
  @Bool()
  external bool gameBootInviteExists;

  @UnsignedLongLong()
  external CSteamId steamIdLobby;
}
