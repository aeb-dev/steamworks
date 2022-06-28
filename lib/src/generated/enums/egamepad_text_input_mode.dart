// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EGamepadTextInputMode'. The value was: '$value'";
    }
  }
}
