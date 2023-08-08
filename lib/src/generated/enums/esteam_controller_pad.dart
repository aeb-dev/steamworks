// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamControllerPadAliasDart = int;
typedef ESteamControllerPadAliasC = Int32;

enum ESteamControllerPad {
  left(0),
  right(1),
  ;

  final int value;

  const ESteamControllerPad(this.value);

  factory ESteamControllerPad.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamControllerPad.left;
      case 1:
        return ESteamControllerPad.right;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamControllerPad'. The value was: '$value'",
        );
    }
  }
}
