// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class GsGameplayStats extends Struct {
  static int get callbackId => 207;

  @Int32()
  external EResultAliasDart result;

  @Int()
  external int rank;

  @UnsignedInt()
  external int totalConnects;

  @UnsignedInt()
  external int totalMinutesPlayed;
}

extension GsGameplayStatsExtensions on Pointer<GsGameplayStats> {
  EResult get result => EResult.fromValue(ref.result);

  int get rank => ref.rank;

  int get totalConnects => ref.totalConnects;

  int get totalMinutesPlayed => ref.totalMinutesPlayed;
}
