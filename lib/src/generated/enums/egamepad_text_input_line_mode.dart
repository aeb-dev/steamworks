// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EGamepadTextInputLineModeAliasDart = int;
typedef EGamepadTextInputLineModeAliasC = Int32;

enum EGamepadTextInputLineMode {
  singleLine(0),
  multipleLines(1),
  ;

  final int value;

  const EGamepadTextInputLineMode(this.value);

  factory EGamepadTextInputLineMode.fromValue(int value) {
    switch (value) {
      case 0:
        return EGamepadTextInputLineMode.singleLine;
      case 1:
        return EGamepadTextInputLineMode.multipleLines;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EGamepadTextInputLineMode'. The value was: '$value'",
        );
    }
  }
}
