import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class GlobalStatsReceived extends Struct {
  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResult result;
}
