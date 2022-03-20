import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInventoryResultReady extends Struct {
  @Int()
  external SteamInventoryResult handle;

  @Int32()
  external EResult result;
}
