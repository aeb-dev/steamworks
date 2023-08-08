// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESnetSocketConnectionTypeAliasDart = int;
typedef ESnetSocketConnectionTypeAliasC = Int32;

enum ESnetSocketConnectionType {
  notConnected(0),
  udp(1),
  udpRelay(2),
  ;

  final int value;

  const ESnetSocketConnectionType(this.value);

  factory ESnetSocketConnectionType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESnetSocketConnectionType.notConnected;
      case 1:
        return ESnetSocketConnectionType.udp;
      case 2:
        return ESnetSocketConnectionType.udpRelay;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESnetSocketConnectionType'. The value was: '$value'",
        );
    }
  }
}
