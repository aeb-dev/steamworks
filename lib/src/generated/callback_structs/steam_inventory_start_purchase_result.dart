// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class SteamInventoryStartPurchaseResult extends Struct {
  static int get callbackId => 4704;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int orderId;

  @UnsignedLongLong()
  external int transId;
}

extension SteamInventoryStartPurchaseResultExtensions
    on Pointer<SteamInventoryStartPurchaseResult> {
  EResult get result => EResult.fromValue(ref.result);

  int get orderId => ref.orderId;

  int get transId => ref.transId;
}
