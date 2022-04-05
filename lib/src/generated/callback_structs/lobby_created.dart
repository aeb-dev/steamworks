import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class LobbyCreated extends Struct {
  static int get callbackId => 513;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int steamIdLobby;
}

extension LobbyCreatedExtensions on Pointer<LobbyCreated> {
  EResult get result => ref.result;

  int get steamIdLobby => ref.steamIdLobby;
}
