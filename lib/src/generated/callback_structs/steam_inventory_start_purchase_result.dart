import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";

@Packed(4)
class SteamInventoryStartPurchaseResult extends Struct {
  @Int32()
  external EResult esult;

  @UnsignedLongLong()
  external int orderId;

  @UnsignedLongLong()
  external int transId;
}
