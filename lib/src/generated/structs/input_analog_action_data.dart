import "dart:ffi";
import "../enums/e_input_source_mode.dart";

@Packed(4)
class InputAnalogActionData extends Struct {
  @Int32()
  external EInputSourceMode eMode;

  @Float()
  external double x;

  @Float()
  external double y;

  @Bool()
  external bool active;
}
