// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamIpTypeAliasDart = int;
typedef ESteamIpTypeAliasC = Int32;

enum ESteamIpType {
  v4(0),
  v6(1),
  ;

  final int value;

  const ESteamIpType(this.value);

  factory ESteamIpType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamIpType.v4;
      case 1:
        return ESteamIpType.v6;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamIpType'. The value was: '$value'",
        );
    }
  }
}
