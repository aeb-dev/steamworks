// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ERemotePlayMouseButtonAliasDart = int;
typedef ERemotePlayMouseButtonAliasC = Int32;

enum ERemotePlayMouseButton {
  left(1),
  right(2),
  middle(16),
  x1(32),
  x2(64),
  ;

  final int value;

  const ERemotePlayMouseButton(this.value);

  factory ERemotePlayMouseButton.fromValue(int value) {
    switch (value) {
      case 1:
        return ERemotePlayMouseButton.left;
      case 2:
        return ERemotePlayMouseButton.right;
      case 16:
        return ERemotePlayMouseButton.middle;
      case 32:
        return ERemotePlayMouseButton.x1;
      case 64:
        return ERemotePlayMouseButton.x2;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ERemotePlayMouseButton'. The value was: '$value'",
        );
    }
  }
}
