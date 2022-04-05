// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class StopPlaytimeTrackingResult extends Struct {
  static int get callbackId => 3411;

  @Int32()
  external EResult result;
}

extension StopPlaytimeTrackingResultExtensions
    on Pointer<StopPlaytimeTrackingResult> {
  EResult get result => ref.result;
}
