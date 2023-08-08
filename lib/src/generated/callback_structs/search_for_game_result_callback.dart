// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class SearchForGameResultCallback extends Struct {
  static int get callbackId => 5202;

  @UnsignedLongLong()
  external int searchId;

  @Int32()
  external EResultAliasDart result;

  @Int()
  external int countPlayersInGame;

  @Int()
  external int countAcceptedGame;

  @UnsignedLongLong()
  external CSteamId steamIdHost;

  @Bool()
  external bool finalCallback;
}

extension SearchForGameResultCallbackExtensions
    on Pointer<SearchForGameResultCallback> {
  int get searchId => ref.searchId;

  EResult get result => EResult.fromValue(ref.result);

  int get countPlayersInGame => ref.countPlayersInGame;

  int get countAcceptedGame => ref.countAcceptedGame;

  CSteamId get steamIdHost => ref.steamIdHost;

  bool get finalCallback => ref.finalCallback;
}
