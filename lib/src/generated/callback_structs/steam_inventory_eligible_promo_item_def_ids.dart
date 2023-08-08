// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamInventoryEligiblePromoItemDefIds extends Struct {
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
