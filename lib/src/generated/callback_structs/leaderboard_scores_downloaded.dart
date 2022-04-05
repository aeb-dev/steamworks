// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class LeaderboardScoresDownloaded extends Struct {
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
