import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class SteamInventoryRequestPricesResult extends Struct {
  static int get callbackId => 4705;

  @Int32()
  external EResult result;

  external Pointer<Utf8> currency;
}

extension SteamInventoryRequestPricesResultExtensions
    on Pointer<SteamInventoryRequestPricesResult> {
  EResult get result => ref.result;

  Pointer<Utf8> get currency => ref.currency;
}
