// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class GsGameplayStats extends Struct {
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
