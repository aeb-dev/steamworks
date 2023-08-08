// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EControllerHapticLocationAliasDart = int;
typedef EControllerHapticLocationAliasC = Int32;

enum EControllerHapticLocation {
  left(1),
  right(2),
  both(3),
  ;

  final int value;

  const EControllerHapticLocation(this.value);

  factory EControllerHapticLocation.fromValue(int value) {
    switch (value) {
      case 1:
        return EControllerHapticLocation.left;
      case 2:
        return EControllerHapticLocation.right;
      case 3:
        return EControllerHapticLocation.both;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EControllerHapticLocation'. The value was: '$value'",
        );
    }
  }
}
