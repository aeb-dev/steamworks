import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class RequestPlayersForGameFinalResultCallback extends Struct {
  static int get callbackId => 5213;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int searchId;

  @UnsignedLongLong()
  external int uniqueGameId;
}

extension RequestPlayersForGameFinalResultCallbackExtensions
    on Pointer<RequestPlayersForGameFinalResultCallback> {
  EResult get result => ref.result;

  int get searchId => ref.searchId;

  int get uniqueGameId => ref.uniqueGameId;
}
