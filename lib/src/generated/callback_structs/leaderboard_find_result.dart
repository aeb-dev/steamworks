import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class LeaderboardFindResult extends Struct {
  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @UnsignedChar()
  external int leaderboardFound;
}
