// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class RequestPlayersForGameFinalResultCallback extends Struct {
  static int get callbackId => 5213;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int searchId;

  @UnsignedLongLong()
  external int uniqueGameId;
}

extension RequestPlayersForGameFinalResultCallbackExtensions
    on Pointer<RequestPlayersForGameFinalResultCallback> {
  EResult get result => EResult.fromValue(ref.result);

  int get searchId => ref.searchId;

  int get uniqueGameId => ref.uniqueGameId;
}
