// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../structs/input_analog_action_data.dart";
import "../typedefs.dart";

@Packed(1)
class AnalogAction extends Struct {
  @UnsignedLongLong()
  external InputAnalogActionHandle actionHandle;

  external InputAnalogActionData analogActionData;
}

extension AnalogActionExtensions on Pointer<AnalogAction> {
  InputAnalogActionHandle get actionHandle => ref.actionHandle;

  InputAnalogActionData get analogActionData => ref.analogActionData;
}
