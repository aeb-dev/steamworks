// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SubmitPlayerResultResultCallback extends Struct {
  static int get callbackId => 5214;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int uniqueGameId;

  @UnsignedLongLong()
  external CSteamId steamIdPlayer;
}

extension SubmitPlayerResultResultCallbackExtensions
    on Pointer<SubmitPlayerResultResultCallback> {
  EResult get result => ref.result;

  int get uniqueGameId => ref.uniqueGameId;

  CSteamId get steamIdPlayer => ref.steamIdPlayer;
}
