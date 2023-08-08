// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class LeaderboardScoreUploaded extends Struct {
  static int get callbackId => 1106;

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

extension LeaderboardScoreUploadedExtensions
    on Pointer<LeaderboardScoreUploaded> {
  int get success => ref.success;

  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;

  int get score => ref.score;

  int get scoreChanged => ref.scoreChanged;

  int get globalRankNew => ref.globalRankNew;

  int get globalRankPrevious => ref.globalRankPrevious;
}
