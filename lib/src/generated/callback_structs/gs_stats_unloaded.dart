import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class GsStatsUnloaded extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdUser;
}
