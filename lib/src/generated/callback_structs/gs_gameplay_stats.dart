import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class GsGameplayStats extends Struct {
  static int get callbackId => 207;

  @Int32()
  external EResult result;

  @Int()
  external int rank;

  @UnsignedInt()
  external int totalConnects;

  @UnsignedInt()
  external int totalMinutesPlayed;
}

extension GsGameplayStatsExtensions on Pointer<GsGameplayStats> {
  EResult get result => ref.result;

  int get rank => ref.rank;

  int get totalConnects => ref.totalConnects;

  int get totalMinutesPlayed => ref.totalMinutesPlayed;
}
