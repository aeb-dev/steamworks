// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

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
