// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EWorkshopVideoProviderAliasDart = int;
typedef EWorkshopVideoProviderAliasC = Int32;

enum EWorkshopVideoProvider {
  none(0),
  youtube(1),
  ;

  final int value;

  const EWorkshopVideoProvider(this.value);

  factory EWorkshopVideoProvider.fromValue(int value) {
    switch (value) {
      case 0:
        return EWorkshopVideoProvider.none;
      case 1:
        return EWorkshopVideoProvider.youtube;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EWorkshopVideoProvider'. The value was: '$value'",
        );
    }
  }
}
