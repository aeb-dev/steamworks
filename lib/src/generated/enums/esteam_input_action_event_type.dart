// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamInputActionEventTypeAliasDart = int;
typedef ESteamInputActionEventTypeAliasC = Int32;

enum ESteamInputActionEventType {
  digitalAction(0),
  analogAction(1),
  ;

  final int value;

  const ESteamInputActionEventType(this.value);

  factory ESteamInputActionEventType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputActionEventType.digitalAction;
      case 1:
        return ESteamInputActionEventType.analogAction;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamInputActionEventType'. The value was: '$value'",
        );
    }
  }
}
