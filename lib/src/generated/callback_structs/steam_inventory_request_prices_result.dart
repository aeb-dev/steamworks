import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class SteamInventoryRequestPricesResult extends Struct {
  @Int32()
  external EResult result;

  external Pointer<Utf8> currency;
}
