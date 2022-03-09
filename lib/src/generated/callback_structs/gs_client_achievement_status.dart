import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class GsClientAchievementStatus extends Struct {
  @UnsignedLongLong()
  external int steamId;

  external Pointer<Utf8> pchAchievement;

  @Bool()
  external bool unlocked;
}
