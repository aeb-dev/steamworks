// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EHtmlKeyModifiersAliasDart = int;
typedef EHtmlKeyModifiersAliasC = Int32;

enum EHtmlKeyModifiers {
  none(0),
  altDown(1),
  ctrlDown(2),
  shiftDown(4),
  ;

  final int value;

  const EHtmlKeyModifiers(this.value);

  factory EHtmlKeyModifiers.fromValue(int value) {
    switch (value) {
      case 0:
        return EHtmlKeyModifiers.none;
      case 1:
        return EHtmlKeyModifiers.altDown;
      case 2:
        return EHtmlKeyModifiers.ctrlDown;
      case 4:
        return EHtmlKeyModifiers.shiftDown;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EHtmlKeyModifiers'. The value was: '$value'",
        );
    }
  }
}
