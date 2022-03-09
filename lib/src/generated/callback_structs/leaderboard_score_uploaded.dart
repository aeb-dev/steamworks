import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class LeaderboardScoreUploaded extends Struct {
  @UnsignedChar()
  external int success;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @Int()
  external int score;

  @UnsignedChar()
  external int scoreChanged;

  @Int()
  external int globalRankNew;

  @Int()
  external int globalRankPrevious;
}
