// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class LeaderboardUgcSet extends Struct {
  static int get callbackId => 1111;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;
}

extension LeaderboardUgcSetExtensions on Pointer<LeaderboardUgcSet> {
  EResult get result => EResult.fromValue(ref.result);

  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;
}
