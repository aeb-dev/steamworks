// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

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
        throw UnknownEnumValueException(
          "Unknown value for 'ELobbyComparison'. The value was: '$value'",
        );
    }
  }
}
