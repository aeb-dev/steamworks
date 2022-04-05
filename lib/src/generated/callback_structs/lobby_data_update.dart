// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LobbyDataUpdate extends Struct {
  static int get callbackId => 505;

  @UnsignedLongLong()
  external int steamIdLobby;

  @UnsignedLongLong()
  external int steamIdMember;

  @UnsignedChar()
  external int success;
}

extension LobbyDataUpdateExtensions on Pointer<LobbyDataUpdate> {
  int get steamIdLobby => ref.steamIdLobby;

  int get steamIdMember => ref.steamIdMember;

  int get success => ref.success;
}
