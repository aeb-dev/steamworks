// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class GlobalStatsReceived extends Struct {
  static int get callbackId => 1112;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResultAliasDart result;
}

extension GlobalStatsReceivedExtensions on Pointer<GlobalStatsReceived> {
  int get gameId => ref.gameId;

  EResult get result => EResult.fromValue(ref.result);
}
