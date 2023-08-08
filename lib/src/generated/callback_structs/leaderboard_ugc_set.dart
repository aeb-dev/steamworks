// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class LeaderboardUgcSet extends Struct {
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
