// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamPartyBeaconLocationTypeAliasDart = int;
typedef ESteamPartyBeaconLocationTypeAliasC = Int32;

enum ESteamPartyBeaconLocationType {
  invalid(0),
  chatGroup(1),
  max(2),
  ;

  final int value;

  const ESteamPartyBeaconLocationType(this.value);

  factory ESteamPartyBeaconLocationType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamPartyBeaconLocationType.invalid;
      case 1:
        return ESteamPartyBeaconLocationType.chatGroup;
      case 2:
        return ESteamPartyBeaconLocationType.max;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamPartyBeaconLocationType'. The value was: '$value'",
        );
    }
  }
}
