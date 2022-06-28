// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EGamepadTextInputLineMode'. The value was: '$value'";
    }
  }
}
