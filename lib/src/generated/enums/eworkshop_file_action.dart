// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EWorkshopFileActionAliasDart = int;
typedef EWorkshopFileActionAliasC = Int32;

enum EWorkshopFileAction {
  played(0),
  completed(1),
  ;

  final int value;

  const EWorkshopFileAction(this.value);

  factory EWorkshopFileAction.fromValue(int value) {
    switch (value) {
      case 0:
        return EWorkshopFileAction.played;
      case 1:
        return EWorkshopFileAction.completed;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EWorkshopFileAction'. The value was: '$value'",
        );
    }
  }
}
