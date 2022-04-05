import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class StartPlaytimeTrackingResult extends Struct {
  static int get callbackId => 3410;

  @Int32()
  external EResult result;
}

extension StartPlaytimeTrackingResultExtensions
    on Pointer<StartPlaytimeTrackingResult> {
  EResult get result => ref.result;
}
