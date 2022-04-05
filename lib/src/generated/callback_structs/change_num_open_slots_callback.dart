// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class ChangeNumOpenSlotsCallback extends Struct {
  static int get callbackId => 5304;

  @Int32()
  external EResult result;
}

extension ChangeNumOpenSlotsCallbackExtensions
    on Pointer<ChangeNumOpenSlotsCallback> {
  EResult get result => ref.result;
}
