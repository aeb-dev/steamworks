import "dart:ffi";

@Packed(1)
class InputDigitalActionData extends Struct {
  @Bool()
  external bool state;

  @Bool()
  external bool active;
}
