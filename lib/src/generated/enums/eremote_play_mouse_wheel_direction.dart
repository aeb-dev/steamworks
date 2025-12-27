// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ERemotePlayMouseWheelDirectionAliasDart = int;
typedef ERemotePlayMouseWheelDirectionAliasC = Int32;

enum ERemotePlayMouseWheelDirection {
  up(1),
  down(2),
  left(3),
  right(4),
  ;

  final int value;

  const ERemotePlayMouseWheelDirection(this.value);

  factory ERemotePlayMouseWheelDirection.fromValue(int value) {
    switch (value) {
      case 1:
        return ERemotePlayMouseWheelDirection.up;
      case 2:
        return ERemotePlayMouseWheelDirection.down;
      case 3:
        return ERemotePlayMouseWheelDirection.left;
      case 4:
        return ERemotePlayMouseWheelDirection.right;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ERemotePlayMouseWheelDirection'. The value was: '$value'",
        );
    }
  }
}
