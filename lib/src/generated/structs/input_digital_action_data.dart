import "dart:ffi";

@Packed(1)
class InputDigitalActionData extends Struct {
  @Bool()
  external bool state;

  @Bool()
  external bool active;
}

extension InputDigitalActionDataExtensions on Pointer<InputDigitalActionData> {
  bool get state => ref.state;

  bool get active => ref.active;
}
