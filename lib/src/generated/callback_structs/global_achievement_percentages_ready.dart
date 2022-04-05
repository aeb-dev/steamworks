// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class GlobalAchievementPercentagesReady extends Struct {
  static int get callbackId => 1110;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResult result;
}

extension GlobalAchievementPercentagesReadyExtensions
    on Pointer<GlobalAchievementPercentagesReady> {
  int get gameId => ref.gameId;

  EResult get result => ref.result;
}
