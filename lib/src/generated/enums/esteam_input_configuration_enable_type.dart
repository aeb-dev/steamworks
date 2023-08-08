// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamInputConfigurationEnableTypeAliasDart = int;
typedef ESteamInputConfigurationEnableTypeAliasC = Int32;

enum ESteamInputConfigurationEnableType {
  none(0),
  playstation(1),
  xbox(2),
  generic(4),
  switch_(8),
  ;

  final int value;

  const ESteamInputConfigurationEnableType(this.value);

  factory ESteamInputConfigurationEnableType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputConfigurationEnableType.none;
      case 1:
        return ESteamInputConfigurationEnableType.playstation;
      case 2:
        return ESteamInputConfigurationEnableType.xbox;
      case 4:
        return ESteamInputConfigurationEnableType.generic;
      case 8:
        return ESteamInputConfigurationEnableType.switch_;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamInputConfigurationEnableType'. The value was: '$value'",
        );
    }
  }
}
