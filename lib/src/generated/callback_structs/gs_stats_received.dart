import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class GsStatsReceived extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}
