// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef PlayerAcceptStateAliasDart = int;
typedef PlayerAcceptStateAliasC = Int32;

enum PlayerAcceptState {
  unknown(0),
  playerAccepted(1),
  playerDeclined(2),
  ;

  final int value;

  const PlayerAcceptState(this.value);

  factory PlayerAcceptState.fromValue(int value) {
    switch (value) {
      case 0:
        return PlayerAcceptState.unknown;
      case 1:
        return PlayerAcceptState.playerAccepted;
      case 2:
        return PlayerAcceptState.playerDeclined;
      default:
        throw "Unknown value for 'PlayerAcceptState'. The value was: '$value'";
    }
  }
}
