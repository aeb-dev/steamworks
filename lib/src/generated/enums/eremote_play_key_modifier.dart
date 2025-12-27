// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ERemotePlayKeyModifierAliasDart = int;
typedef ERemotePlayKeyModifierAliasC = Int32;

enum ERemotePlayKeyModifier {
  none(0),
  leftShift(1),
  rightShift(2),
  leftControl(64),
  rightControl(128),
  leftAlt(256),
  rightAlt(512),
  leftGUI(1024),
  rightGUI(2048),
  numLock(4096),
  capsLock(8192),
  mask(65535),
  ;

  final int value;

  const ERemotePlayKeyModifier(this.value);

  factory ERemotePlayKeyModifier.fromValue(int value) {
    switch (value) {
      case 0:
        return ERemotePlayKeyModifier.none;
      case 1:
        return ERemotePlayKeyModifier.leftShift;
      case 2:
        return ERemotePlayKeyModifier.rightShift;
      case 64:
        return ERemotePlayKeyModifier.leftControl;
      case 128:
        return ERemotePlayKeyModifier.rightControl;
      case 256:
        return ERemotePlayKeyModifier.leftAlt;
      case 512:
        return ERemotePlayKeyModifier.rightAlt;
      case 1024:
        return ERemotePlayKeyModifier.leftGUI;
      case 2048:
        return ERemotePlayKeyModifier.rightGUI;
      case 4096:
        return ERemotePlayKeyModifier.numLock;
      case 8192:
        return ERemotePlayKeyModifier.capsLock;
      case 65535:
        return ERemotePlayKeyModifier.mask;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ERemotePlayKeyModifier'. The value was: '$value'",
        );
    }
  }
}
