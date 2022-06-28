// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInventoryEligiblePromoItemDefIds extends Struct {
  static int get callbackId => 4703;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int numEligiblePromoItemDefs;

  @Bool()
  external bool cachedData;
}

extension SteamInventoryEligiblePromoItemDefIdsExtensions
    on Pointer<SteamInventoryEligiblePromoItemDefIds> {
  EResult get result => EResult.fromValue(ref.result);

  CSteamId get steamId => ref.steamId;

  int get numEligiblePromoItemDefs => ref.numEligiblePromoItemDefs;

  bool get cachedData => ref.cachedData;
}
