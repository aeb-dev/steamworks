// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EP2pSendAliasDart = int;
typedef EP2pSendAliasC = Int32;

enum EP2pSend {
  unreliable(0),
  unreliableNoDelay(1),
  reliable(2),
  reliableWithBuffering(3),
  ;

  final int value;

  const EP2pSend(this.value);

  factory EP2pSend.fromValue(int value) {
    switch (value) {
      case 0:
        return EP2pSend.unreliable;
      case 1:
        return EP2pSend.unreliableNoDelay;
      case 2:
        return EP2pSend.reliable;
      case 3:
        return EP2pSend.reliableWithBuffering;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EP2pSend'. The value was: '$value'",
        );
    }
  }
}
