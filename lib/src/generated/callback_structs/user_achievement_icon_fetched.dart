// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class UserAchievementIconFetched extends Struct {
  static int get callbackId => 1109;

  @UnsignedLongLong()
  external CGameId gameId;

  external Pointer<Utf8> achievementName;

  @Bool()
  external bool achieved;

  @Int()
  external int iconHandle;
}

extension UserAchievementIconFetchedExtensions
    on Pointer<UserAchievementIconFetched> {
  CGameId get gameId => ref.gameId;

  Pointer<Utf8> get achievementName => ref.achievementName;

  bool get achieved => ref.achieved;

  int get iconHandle => ref.iconHandle;
}
