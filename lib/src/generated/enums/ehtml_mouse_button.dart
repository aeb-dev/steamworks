// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EHtmlMouseButtonAliasDart = int;
typedef EHtmlMouseButtonAliasC = Int32;

enum EHtmlMouseButton {
  left(0),
  right(1),
  middle(2),
  ;

  final int value;

  const EHtmlMouseButton(this.value);

  factory EHtmlMouseButton.fromValue(int value) {
    switch (value) {
      case 0:
        return EHtmlMouseButton.left;
      case 1:
        return EHtmlMouseButton.right;
      case 2:
        return EHtmlMouseButton.middle;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EHtmlMouseButton'. The value was: '$value'",
        );
    }
  }
}
