// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/einput_source_mode.dart";

@Packed(1)
final class InputAnalogActionData extends Struct {
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
