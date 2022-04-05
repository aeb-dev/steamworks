import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class ScreenshotReady extends Struct {
  static int get callbackId => 2301;

  @UnsignedInt()
  external ScreenshotHandle local;

  @Int32()
  external EResult result;
}

extension ScreenshotReadyExtensions on Pointer<ScreenshotReady> {
  ScreenshotHandle get local => ref.local;

  EResult get result => ref.result;
}
