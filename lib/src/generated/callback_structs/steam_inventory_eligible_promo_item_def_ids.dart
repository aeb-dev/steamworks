import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class SteamInventoryEligiblePromoItemDefIds extends Struct {
  @Int32()
  external EResult esult;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int umEligiblePromoItemDefs;

  @Bool()
  external bool cachedData;
}
