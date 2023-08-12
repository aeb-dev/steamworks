// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class UserAchievementIconFetched extends Struct {
  static int get callbackId => 1109;

  @UnsignedLongLong()
  external CGameId gameId;

  @Array<Char>(128)
  external Array<Char> achievementName;

  @Bool()
  external bool achieved;

  @Int()
  external int iconHandle;
}

extension UserAchievementIconFetchedExtensions
    on Pointer<UserAchievementIconFetched> {
  CGameId get gameId => ref.gameId;

  Array<Char> get achievementName => ref.achievementName;

  bool get achieved => ref.achieved;

  int get iconHandle => ref.iconHandle;
}
