// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class UserStatsReceived extends Struct {
  static int get callbackId => 1101;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}

extension UserStatsReceivedExtensions on Pointer<UserStatsReceived> {
  int get gameId => ref.gameId;

  EResult get result => EResult.fromValue(ref.result);

  CSteamId get steamIdUser => ref.steamIdUser;
}
