import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class GsGameplayStats extends Struct {
  @Int32()
  external EResult result;

  @Int()
  external int rank;

  @UnsignedInt()
  external int totalConnects;

  @UnsignedInt()
  external int totalMinutesPlayed;
}
