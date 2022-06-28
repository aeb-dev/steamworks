// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class SteamInventoryFullUpdate extends Struct {
  static int get callbackId => 4701;

  @Int()
  external SteamInventoryResult handle;
}

extension SteamInventoryFullUpdateExtensions
    on Pointer<SteamInventoryFullUpdate> {
  SteamInventoryResult get handle => ref.handle;
}
