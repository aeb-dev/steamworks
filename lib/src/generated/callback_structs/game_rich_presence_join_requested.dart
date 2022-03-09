import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GameRichPresenceJoinRequested extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdFriend;

  external Pointer<Utf8> connect;
}
