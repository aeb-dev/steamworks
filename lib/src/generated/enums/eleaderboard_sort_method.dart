// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ELeaderboardSortMethodAliasDart = int;
typedef ELeaderboardSortMethodAliasC = Int32;

enum ELeaderboardSortMethod {
  none(0),
  ascending(1),
  descending(2),
  ;

  final int value;

  const ELeaderboardSortMethod(this.value);

  factory ELeaderboardSortMethod.fromValue(int value) {
    switch (value) {
      case 0:
        return ELeaderboardSortMethod.none;
      case 1:
        return ELeaderboardSortMethod.ascending;
      case 2:
        return ELeaderboardSortMethod.descending;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ELeaderboardSortMethod'. The value was: '$value'",
        );
    }
  }
}
