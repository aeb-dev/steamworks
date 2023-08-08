// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class ScreenshotReady extends Struct {
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
