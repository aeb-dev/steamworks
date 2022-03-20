import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class LeaderboardScoresDownloaded extends Struct {
  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @UnsignedLongLong()
  external SteamLeaderboardEntries steamLeaderboardEntries;

  @Int()
  external int entryCount;
}
