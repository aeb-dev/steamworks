import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class SteamInventoryStartPurchaseResult extends Struct {
  static int get callbackId => 4704;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int orderId;

  @UnsignedLongLong()
  external int transId;
}

extension SteamInventoryStartPurchaseResultExtensions
    on Pointer<SteamInventoryStartPurchaseResult> {
  EResult get result => ref.result;

  int get orderId => ref.orderId;

  int get transId => ref.transId;
}
