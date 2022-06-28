// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class LeaderboardFindResult extends Struct {
  static int get callbackId => 1104;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @UnsignedChar()
  external int leaderboardFound;
}

extension LeaderboardFindResultExtensions on Pointer<LeaderboardFindResult> {
  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;

  int get leaderboardFound => ref.leaderboardFound;
}
