// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamNetworkingGetConfigValueResultAliasDart = int;
typedef ESteamNetworkingGetConfigValueResultAliasC = Int32;

enum ESteamNetworkingGetConfigValueResult {
  bufferTooSmall(-3),
  badScopeObj(-2),
  badValue(-1),
  ok(1),
  oKInherited(2),
  ;

  final int value;

  const ESteamNetworkingGetConfigValueResult(this.value);

  factory ESteamNetworkingGetConfigValueResult.fromValue(int value) {
    switch (value) {
      case -3:
        return ESteamNetworkingGetConfigValueResult.bufferTooSmall;
      case -2:
        return ESteamNetworkingGetConfigValueResult.badScopeObj;
      case -1:
        return ESteamNetworkingGetConfigValueResult.badValue;
      case 1:
        return ESteamNetworkingGetConfigValueResult.ok;
      case 2:
        return ESteamNetworkingGetConfigValueResult.oKInherited;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamNetworkingGetConfigValueResult'. The value was: '$value'",
        );
    }
  }
}
