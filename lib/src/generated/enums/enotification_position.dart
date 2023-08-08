// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ENotificationPositionAliasDart = int;
typedef ENotificationPositionAliasC = Int32;

enum ENotificationPosition {
  invalid(-1),
  topLeft(0),
  topRight(1),
  bottomLeft(2),
  bottomRight(3),
  ;

  final int value;

  const ENotificationPosition(this.value);

  factory ENotificationPosition.fromValue(int value) {
    switch (value) {
      case -1:
        return ENotificationPosition.invalid;
      case 0:
        return ENotificationPosition.topLeft;
      case 1:
        return ENotificationPosition.topRight;
      case 2:
        return ENotificationPosition.bottomLeft;
      case 3:
        return ENotificationPosition.bottomRight;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ENotificationPosition'. The value was: '$value'",
        );
    }
  }
}
