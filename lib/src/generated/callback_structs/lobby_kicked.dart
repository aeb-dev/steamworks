// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyKicked extends Struct {
  static int get callbackId => 512;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdAdmin;

  @UnsignedChar()
  external int kickedDueToDisconnect;
}

extension LobbyKickedExtensions on Pointer<LobbyKicked> {
  int get steamIdLobby => ref.steamIdLobby;

  int get steamIdAdmin => ref.steamIdAdmin;

  int get kickedDueToDisconnect => ref.kickedDueToDisconnect;
}
