// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EFloatingGamepadTextInputMode'. The value was: '$value'";
    }
  }
}
