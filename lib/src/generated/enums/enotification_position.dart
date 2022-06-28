// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ENotificationPositionAliasDart = int;
typedef ENotificationPositionAliasC = Int32;

enum ENotificationPosition {
  topLeft(0),
  topRight(1),
  bottomLeft(2),
  bottomRight(3),
  ;

  final int value;

  const ENotificationPosition(this.value);

  factory ENotificationPosition.fromValue(int value) {
    switch (value) {
      case 0:
        return ENotificationPosition.topLeft;
      case 1:
        return ENotificationPosition.topRight;
      case 2:
        return ENotificationPosition.bottomLeft;
      case 3:
        return ENotificationPosition.bottomRight;
      default:
        throw "Unknown value for 'ENotificationPosition'. The value was: '$value'";
    }
  }
}
