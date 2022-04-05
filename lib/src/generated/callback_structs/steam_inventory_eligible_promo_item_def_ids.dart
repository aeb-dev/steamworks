// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInventoryEligiblePromoItemDefIds extends Struct {
  static int get callbackId => 4703;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int numEligiblePromoItemDefs;

  @Bool()
  external bool cachedData;
}

extension SteamInventoryEligiblePromoItemDefIdsExtensions
    on Pointer<SteamInventoryEligiblePromoItemDefIds> {
  EResult get result => ref.result;

  CSteamId get steamId => ref.steamId;

  int get numEligiblePromoItemDefs => ref.numEligiblePromoItemDefs;

  bool get cachedData => ref.cachedData;
}
