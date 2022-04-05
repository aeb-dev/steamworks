// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class GlobalStatsReceived extends Struct {
  static int get callbackId => 1112;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResult result;
}

extension GlobalStatsReceivedExtensions on Pointer<GlobalStatsReceived> {
  int get gameId => ref.gameId;

  EResult get result => ref.result;
}
