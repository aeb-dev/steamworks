// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EDurationControlOnlineStateAliasDart = int;
typedef EDurationControlOnlineStateAliasC = Int32;

enum EDurationControlOnlineState {
  invalid(0),
  offline(1),
  online(2),
  onlineHighPri(3),
  ;

  final int value;

  const EDurationControlOnlineState(this.value);

  factory EDurationControlOnlineState.fromValue(int value) {
    switch (value) {
      case 0:
        return EDurationControlOnlineState.invalid;
      case 1:
        return EDurationControlOnlineState.offline;
      case 2:
        return EDurationControlOnlineState.online;
      case 3:
        return EDurationControlOnlineState.onlineHighPri;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EDurationControlOnlineState'. The value was: '$value'",
        );
    }
  }
}
