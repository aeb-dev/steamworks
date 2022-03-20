import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class UserStatsUnloaded extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdUser;
}
