// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class ScreenshotReady extends Struct {
  static int get callbackId => 2301;

  @UnsignedInt()
  external ScreenshotHandle local;

  @Int32()
  external EResultAliasDart result;
}

extension ScreenshotReadyExtensions on Pointer<ScreenshotReady> {
  ScreenshotHandle get local => ref.local;

  EResult get result => EResult.fromValue(ref.result);
}
