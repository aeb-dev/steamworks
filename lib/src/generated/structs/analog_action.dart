// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../structs/input_analog_action_data.dart";
import "../typedefs.dart";

@Packed(1)
final class AnalogAction extends Struct {
  @UnsignedLongLong()
  external InputAnalogActionHandle actionHandle;

  external InputAnalogActionData analogActionData;
}

extension AnalogActionExtensions on Pointer<AnalogAction> {
  InputAnalogActionHandle get actionHandle => ref.actionHandle;

  InputAnalogActionData get analogActionData => ref.analogActionData;
}
