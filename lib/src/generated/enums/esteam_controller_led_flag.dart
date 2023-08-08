// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamControllerLedFlagAliasDart = int;
typedef ESteamControllerLedFlagAliasC = Int32;

enum ESteamControllerLedFlag {
  setColor(0),
  restoreUserDefault(1),
  ;

  final int value;

  const ESteamControllerLedFlag(this.value);

  factory ESteamControllerLedFlag.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamControllerLedFlag.setColor;
      case 1:
        return ESteamControllerLedFlag.restoreUserDefault;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamControllerLedFlag'. The value was: '$value'",
        );
    }
  }
}
