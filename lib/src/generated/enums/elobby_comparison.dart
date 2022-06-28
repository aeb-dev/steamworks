// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ELobbyComparisonAliasDart = int;
typedef ELobbyComparisonAliasC = Int32;

enum ELobbyComparison {
  equalToOrLessThan(-2),
  lessThan(-1),
  equal(0),
  greaterThan(1),
  equalToOrGreaterThan(2),
  notEqual(3),
  ;

  final int value;

  const ELobbyComparison(this.value);

  factory ELobbyComparison.fromValue(int value) {
    switch (value) {
      case -2:
        return ELobbyComparison.equalToOrLessThan;
      case -1:
        return ELobbyComparison.lessThan;
      case 0:
        return ELobbyComparison.equal;
      case 1:
        return ELobbyComparison.greaterThan;
      case 2:
        return ELobbyComparison.equalToOrGreaterThan;
      case 3:
        return ELobbyComparison.notEqual;
      default:
        throw "Unknown value for 'ELobbyComparison'. The value was: '$value'";
    }
  }
}
