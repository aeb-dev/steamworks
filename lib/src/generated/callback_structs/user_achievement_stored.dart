// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
final class UserAchievementStored extends Struct {
  static int get callbackId => 1103;

  @UnsignedLongLong()
  external int gameId;

  @Bool()
  external bool groupAchievement;

  external Pointer<Utf8> achievementName;

  @UnsignedInt()
  external int curProgress;

  @UnsignedInt()
  external int maxProgress;
}

extension UserAchievementStoredExtensions on Pointer<UserAchievementStored> {
  int get gameId => ref.gameId;

  bool get groupAchievement => ref.groupAchievement;

  Pointer<Utf8> get achievementName => ref.achievementName;

  int get curProgress => ref.curProgress;

  int get maxProgress => ref.maxProgress;
}
