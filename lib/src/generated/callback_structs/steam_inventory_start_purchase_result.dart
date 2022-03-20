import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class SteamInventoryStartPurchaseResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int orderId;

  @UnsignedLongLong()
  external int transId;
}
