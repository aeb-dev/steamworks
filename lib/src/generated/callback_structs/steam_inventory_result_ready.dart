// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamInventoryResultReady extends Struct {
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
