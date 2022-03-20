import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class UserAchievementIconFetched extends Struct {
  @UnsignedLongLong()
  external CGameId gameId;

  external Pointer<Utf8> achievementName;

  @Bool()
  external bool achieved;

  @Int()
  external int iconHandle;
}
