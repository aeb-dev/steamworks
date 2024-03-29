// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamNetworkingFakeIpTypeAliasDart = int;
typedef ESteamNetworkingFakeIpTypeAliasC = Int32;

enum ESteamNetworkingFakeIpType {
  invalid(0),
  notFake(1),
  globalIpv4(2),
  localIpv4(3),
  ;

  final int value;

  const ESteamNetworkingFakeIpType(this.value);

  factory ESteamNetworkingFakeIpType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamNetworkingFakeIpType.invalid;
      case 1:
        return ESteamNetworkingFakeIpType.notFake;
      case 2:
        return ESteamNetworkingFakeIpType.globalIpv4;
      case 3:
        return ESteamNetworkingFakeIpType.localIpv4;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamNetworkingFakeIpType'. The value was: '$value'",
        );
    }
  }
}
