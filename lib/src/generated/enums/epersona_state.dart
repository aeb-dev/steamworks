// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EPersonaStateAliasDart = int;
typedef EPersonaStateAliasC = Int32;

enum EPersonaState {
  offline(0),
  online(1),
  busy(2),
  away(3),
  snooze(4),
  lookingToTrade(5),
  lookingToPlay(6),
  invisible(7),
  max(8),
  ;

  final int value;

  const EPersonaState(this.value);

  factory EPersonaState.fromValue(int value) {
    switch (value) {
      case 0:
        return EPersonaState.offline;
      case 1:
        return EPersonaState.online;
      case 2:
        return EPersonaState.busy;
      case 3:
        return EPersonaState.away;
      case 4:
        return EPersonaState.snooze;
      case 5:
        return EPersonaState.lookingToTrade;
      case 6:
        return EPersonaState.lookingToPlay;
      case 7:
        return EPersonaState.invisible;
      case 8:
        return EPersonaState.max;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EPersonaState'. The value was: '$value'",
        );
    }
  }
}
