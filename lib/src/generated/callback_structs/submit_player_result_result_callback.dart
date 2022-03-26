import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class SubmitPlayerResultResultCallback extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int uniqueGameId;

  @UnsignedLongLong()
  external CSteamId steamIdPlayer;
}