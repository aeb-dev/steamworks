// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class LeaderboardEntry extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int globalRank;

  @Int()
  external int score;

  @Int()
  external int details;

  @UnsignedLongLong()
  external UgcHandle ugc;
}

extension LeaderboardEntryExtensions on Pointer<LeaderboardEntry> {
  CSteamId get steamIdUser => ref.steamIdUser;

  int get globalRank => ref.globalRank;

  int get score => ref.score;

  int get details => ref.details;

  UgcHandle get ugc => ref.ugc;
}
