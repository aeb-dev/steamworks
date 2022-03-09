import "dart:ffi";

@Packed(4)
class InputDigitalActionData extends Struct {
  @Bool()
  external bool state;

  @Bool()
  external bool active;
}
