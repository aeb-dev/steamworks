// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class LobbyCreated extends Struct {
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
