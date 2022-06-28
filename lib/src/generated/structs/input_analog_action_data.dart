// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/einput_source_mode.dart";

@Packed(1)
class InputAnalogActionData extends Struct {
  @Int32()
  external EInputSourceModeAliasDart mode;

  @Float()
  external double x;

  @Float()
  external double y;

  @Bool()
  external bool active;
}

extension InputAnalogActionDataExtensions on Pointer<InputAnalogActionData> {
  EInputSourceMode get mode => EInputSourceMode.fromValue(ref.mode);

  double get x => ref.x;

  double get y => ref.y;

  bool get active => ref.active;
}
