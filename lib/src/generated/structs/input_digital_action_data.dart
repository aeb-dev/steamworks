// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
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
