// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class SteamServerConnectFailure extends Struct {
  static int get callbackId => 102;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool stillRetrying;
}

extension SteamServerConnectFailureExtensions
    on Pointer<SteamServerConnectFailure> {
  EResult get result => EResult.fromValue(ref.result);

  bool get stillRetrying => ref.stillRetrying;
}
