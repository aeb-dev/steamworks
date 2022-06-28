// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EPersonaState'. The value was: '$value'";
    }
  }
}
