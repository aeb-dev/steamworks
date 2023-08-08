// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamNetworkingConfigDataTypeAliasDart = int;
typedef ESteamNetworkingConfigDataTypeAliasC = Int32;

enum ESteamNetworkingConfigDataType {
  int32(1),
  int64(2),
  float(3),
  string(4),
  ptr(5),
  ;

  final int value;

  const ESteamNetworkingConfigDataType(this.value);

  factory ESteamNetworkingConfigDataType.fromValue(int value) {
    switch (value) {
      case 1:
        return ESteamNetworkingConfigDataType.int32;
      case 2:
        return ESteamNetworkingConfigDataType.int64;
      case 3:
        return ESteamNetworkingConfigDataType.float;
      case 4:
        return ESteamNetworkingConfigDataType.string;
      case 5:
        return ESteamNetworkingConfigDataType.ptr;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamNetworkingConfigDataType'. The value was: '$value'",
        );
    }
  }
}
