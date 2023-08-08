// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ELeaderboardDisplayTypeAliasDart = int;
typedef ELeaderboardDisplayTypeAliasC = Int32;

enum ELeaderboardDisplayType {
  none(0),
  numeric(1),
  timeSeconds(2),
  timeMilliSeconds(3),
  ;

  final int value;

  const ELeaderboardDisplayType(this.value);

  factory ELeaderboardDisplayType.fromValue(int value) {
    switch (value) {
      case 0:
        return ELeaderboardDisplayType.none;
      case 1:
        return ELeaderboardDisplayType.numeric;
      case 2:
        return ELeaderboardDisplayType.timeSeconds;
      case 3:
        return ELeaderboardDisplayType.timeMilliSeconds;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ELeaderboardDisplayType'. The value was: '$value'",
        );
    }
  }
}
