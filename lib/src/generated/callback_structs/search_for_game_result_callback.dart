import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SearchForGameResultCallback extends Struct {
  static int get callbackId => 5202;

  @UnsignedLongLong()
  external int searchId;

  @Int32()
  external EResult result;

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

  EResult get result => ref.result;

  int get countPlayersInGame => ref.countPlayersInGame;

  int get countAcceptedGame => ref.countAcceptedGame;

  CSteamId get steamIdHost => ref.steamIdHost;

  bool get finalCallback => ref.finalCallback;
}
