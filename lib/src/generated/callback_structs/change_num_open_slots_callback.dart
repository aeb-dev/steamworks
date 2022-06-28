// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class ChangeNumOpenSlotsCallback extends Struct {
  static int get callbackId => 5304;

  @Int32()
  external EResultAliasDart result;
}

extension ChangeNumOpenSlotsCallbackExtensions
    on Pointer<ChangeNumOpenSlotsCallback> {
  EResult get result => EResult.fromValue(ref.result);
}
