import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GsClientAchievementStatus extends Struct {
  @UnsignedLongLong()
  external int steamId;

  external Pointer<Utf8> achievement;

  @Bool()
  external bool unlocked;
}
