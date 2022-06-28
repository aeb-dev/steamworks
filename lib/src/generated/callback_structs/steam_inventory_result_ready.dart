// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInventoryResultReady extends Struct {
  static int get callbackId => 4700;

  @Int()
  external SteamInventoryResult handle;

  @Int32()
  external EResultAliasDart result;
}

extension SteamInventoryResultReadyExtensions
    on Pointer<SteamInventoryResultReady> {
  SteamInventoryResult get handle => ref.handle;

  EResult get result => EResult.fromValue(ref.result);
}
