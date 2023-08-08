// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamIpv6ConnectivityStateAliasDart = int;
typedef ESteamIpv6ConnectivityStateAliasC = Int32;

enum ESteamIpv6ConnectivityState {
  unknown(0),
  good(1),
  bad(2),
  ;

  final int value;

  const ESteamIpv6ConnectivityState(this.value);

  factory ESteamIpv6ConnectivityState.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamIpv6ConnectivityState.unknown;
      case 1:
        return ESteamIpv6ConnectivityState.good;
      case 2:
        return ESteamIpv6ConnectivityState.bad;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamIpv6ConnectivityState'. The value was: '$value'",
        );
    }
  }
}
