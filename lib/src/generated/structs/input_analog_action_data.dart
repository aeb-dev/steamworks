import "dart:ffi";

import "../enums/e_input_source_mode.dart";

@Packed(1)
class InputAnalogActionData extends Struct {
  @Int32()
  external EInputSourceMode mode;

  @Float()
  external double x;

  @Float()
  external double y;

  @Bool()
  external bool active;
}
