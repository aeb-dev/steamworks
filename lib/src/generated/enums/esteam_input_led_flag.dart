// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamInputLedFlagAliasDart = int;
typedef ESteamInputLedFlagAliasC = Int32;

enum ESteamInputLedFlag {
  setColor(0),
  restoreUserDefault(1),
  ;

  final int value;

  const ESteamInputLedFlag(this.value);

  factory ESteamInputLedFlag.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputLedFlag.setColor;
      case 1:
        return ESteamInputLedFlag.restoreUserDefault;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamInputLedFlag'. The value was: '$value'",
        );
    }
  }
}
