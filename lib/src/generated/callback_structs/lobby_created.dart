// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class LobbyCreated extends Struct {
  static int get callbackId => 513;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int steamIdLobby;
}

extension LobbyCreatedExtensions on Pointer<LobbyCreated> {
  EResult get result => EResult.fromValue(ref.result);

  int get steamIdLobby => ref.steamIdLobby;
}
