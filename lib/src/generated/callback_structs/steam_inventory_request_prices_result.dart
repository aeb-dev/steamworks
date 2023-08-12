// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class SteamInventoryRequestPricesResult extends Struct {
  static int get callbackId => 4705;

  @Int32()
  external EResultAliasDart result;

  @Array<Char>(4)
  external Array<Char> currency;
}

extension SteamInventoryRequestPricesResultExtensions
    on Pointer<SteamInventoryRequestPricesResult> {
  EResult get result => EResult.fromValue(ref.result);

  Array<Char> get currency => ref.currency;
}
