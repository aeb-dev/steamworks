// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class SteamInventoryStartPurchaseResult extends Struct {
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
