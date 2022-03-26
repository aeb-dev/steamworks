import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class SearchForGameResultCallback extends Struct {
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