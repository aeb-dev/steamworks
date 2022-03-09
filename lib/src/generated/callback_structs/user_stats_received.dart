import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class UserStatsReceived extends Struct {
  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}
