// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(1)
final class InputDigitalActionData extends Struct {
  @Bool()
  external bool state;

  @Bool()
  external bool active;
}

extension InputDigitalActionDataExtensions on Pointer<InputDigitalActionData> {
  bool get state => ref.state;

  bool get active => ref.active;
}
