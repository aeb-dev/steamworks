// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EControllerHapticType'. The value was: '$value'";
    }
  }
}
