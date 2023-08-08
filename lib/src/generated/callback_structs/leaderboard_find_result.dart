// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class LeaderboardFindResult extends Struct {
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
