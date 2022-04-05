// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInventoryResultReady extends Struct {
  static int get callbackId => 4700;

  @Int()
  external SteamInventoryResult handle;

  @Int32()
  external EResult result;
}

extension SteamInventoryResultReadyExtensions
    on Pointer<SteamInventoryResultReady> {
  SteamInventoryResult get handle => ref.handle;

  EResult get result => ref.result;
}
