// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ERemotePlayInputTypeAliasDart = int;
typedef ERemotePlayInputTypeAliasC = Int32;

enum ERemotePlayInputType {
  unknown(0),
  mouseMotion(1),
  mouseButtonDown(2),
  mouseButtonUp(3),
  mouseWheel(4),
  keyDown(5),
  keyUp(6),
  ;

  final int value;

  const ERemotePlayInputType(this.value);

  factory ERemotePlayInputType.fromValue(int value) {
    switch (value) {
      case 0:
        return ERemotePlayInputType.unknown;
      case 1:
        return ERemotePlayInputType.mouseMotion;
      case 2:
        return ERemotePlayInputType.mouseButtonDown;
      case 3:
        return ERemotePlayInputType.mouseButtonUp;
      case 4:
        return ERemotePlayInputType.mouseWheel;
      case 5:
        return ERemotePlayInputType.keyDown;
      case 6:
        return ERemotePlayInputType.keyUp;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ERemotePlayInputType'. The value was: '$value'",
        );
    }
  }
}
