import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class RequestPlayersForGameFinalResultCallback extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int searchId;

  @UnsignedLongLong()
  external int uniqueGameId;
}
