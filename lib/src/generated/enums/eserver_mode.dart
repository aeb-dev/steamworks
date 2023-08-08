// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EServerModeAliasDart = int;
typedef EServerModeAliasC = Int32;

enum EServerMode {
  invalid(0),
  noAuthentication(1),
  authentication(2),
  authenticationAndSecure(3),
  ;

  final int value;

  const EServerMode(this.value);

  factory EServerMode.fromValue(int value) {
    switch (value) {
      case 0:
        return EServerMode.invalid;
      case 1:
        return EServerMode.noAuthentication;
      case 2:
        return EServerMode.authentication;
      case 3:
        return EServerMode.authenticationAndSecure;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EServerMode'. The value was: '$value'",
        );
    }
  }
}
