// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EControllerHapticTypeAliasDart = int;
typedef EControllerHapticTypeAliasC = Int32;

enum EControllerHapticType {
  off(0),
  tick(1),
  click(2),
  ;

  final int value;

  const EControllerHapticType(this.value);

  factory EControllerHapticType.fromValue(int value) {
    switch (value) {
      case 0:
        return EControllerHapticType.off;
      case 1:
        return EControllerHapticType.tick;
      case 2:
        return EControllerHapticType.click;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EControllerHapticType'. The value was: '$value'",
        );
    }
  }
}
