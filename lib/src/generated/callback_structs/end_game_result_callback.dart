// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class EndGameResultCallback extends Struct {
  static int get callbackId => 5215;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int uniqueGameId;
}

extension EndGameResultCallbackExtensions on Pointer<EndGameResultCallback> {
  EResult get result => EResult.fromValue(ref.result);

  int get uniqueGameId => ref.uniqueGameId;
}
