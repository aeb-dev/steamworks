import "dart:ffi";
import "package:ffi/ffi.dart";
import "../structs/input_analog_action_data.dart";
import "../typedefs.dart";

@Packed(4)
class AnalogAction extends Struct {
  @UnsignedLongLong()
  external InputAnalogActionHandle actionHandle;

  external InputAnalogActionData analogActionData;
}
