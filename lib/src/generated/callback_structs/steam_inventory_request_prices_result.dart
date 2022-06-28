// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class SteamInventoryRequestPricesResult extends Struct {
  static int get callbackId => 4705;

  @Int32()
  external EResultAliasDart result;

  external Pointer<Utf8> currency;
}

extension SteamInventoryRequestPricesResultExtensions
    on Pointer<SteamInventoryRequestPricesResult> {
  EResult get result => EResult.fromValue(ref.result);

  Pointer<Utf8> get currency => ref.currency;
}
