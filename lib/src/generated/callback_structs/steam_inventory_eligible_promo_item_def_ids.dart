import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInventoryEligiblePromoItemDefIds extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int numEligiblePromoItemDefs;

  @Bool()
  external bool cachedData;
}
