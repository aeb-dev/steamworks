// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EGamepadTextInputModeAliasDart = int;
typedef EGamepadTextInputModeAliasC = Int32;

enum EGamepadTextInputMode {
  normal(0),
  password(1),
  ;

  final int value;

  const EGamepadTextInputMode(this.value);

  factory EGamepadTextInputMode.fromValue(int value) {
    switch (value) {
      case 0:
        return EGamepadTextInputMode.normal;
      case 1:
        return EGamepadTextInputMode.password;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EGamepadTextInputMode'. The value was: '$value'",
        );
    }
  }
}
