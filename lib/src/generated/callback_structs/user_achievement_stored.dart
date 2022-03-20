import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class UserAchievementStored extends Struct {
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
