// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class UserStatsStored extends Struct {
  static int get callbackId => 1102;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResultAliasDart result;
}

extension UserStatsStoredExtensions on Pointer<UserStatsStored> {
  int get gameId => ref.gameId;

  EResult get result => EResult.fromValue(ref.result);
}
