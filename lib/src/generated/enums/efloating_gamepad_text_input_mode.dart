// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EFloatingGamepadTextInputModeAliasDart = int;
typedef EFloatingGamepadTextInputModeAliasC = Int32;

enum EFloatingGamepadTextInputMode {
  singleLine(0),
  multipleLines(1),
  email(2),
  numeric(3),
  ;

  final int value;

  const EFloatingGamepadTextInputMode(this.value);

  factory EFloatingGamepadTextInputMode.fromValue(int value) {
    switch (value) {
      case 0:
        return EFloatingGamepadTextInputMode.singleLine;
      case 1:
        return EFloatingGamepadTextInputMode.multipleLines;
      case 2:
        return EFloatingGamepadTextInputMode.email;
      case 3:
        return EFloatingGamepadTextInputMode.numeric;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EFloatingGamepadTextInputMode'. The value was: '$value'",
        );
    }
  }
}
