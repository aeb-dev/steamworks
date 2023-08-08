// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class LeaderboardScoresDownloaded extends Struct {
  static int get callbackId => 1105;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @UnsignedLongLong()
  external SteamLeaderboardEntries steamLeaderboardEntries;

  @Int()
  external int entryCount;
}

extension LeaderboardScoresDownloadedExtensions
    on Pointer<LeaderboardScoresDownloaded> {
  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;

  SteamLeaderboardEntries get steamLeaderboardEntries =>
      ref.steamLeaderboardEntries;

  int get entryCount => ref.entryCount;
}
