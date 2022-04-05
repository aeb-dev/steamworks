// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class EndGameResultCallback extends Struct {
  static int get callbackId => 5215;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int uniqueGameId;
}

extension EndGameResultCallbackExtensions on Pointer<EndGameResultCallback> {
  EResult get result => ref.result;

  int get uniqueGameId => ref.uniqueGameId;
}
