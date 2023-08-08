// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ELeaderboardDataRequestAliasDart = int;
typedef ELeaderboardDataRequestAliasC = Int32;

enum ELeaderboardDataRequest {
  global(0),
  globalAroundUser(1),
  friends(2),
  users(3),
  ;

  final int value;

  const ELeaderboardDataRequest(this.value);

  factory ELeaderboardDataRequest.fromValue(int value) {
    switch (value) {
      case 0:
        return ELeaderboardDataRequest.global;
      case 1:
        return ELeaderboardDataRequest.globalAroundUser;
      case 2:
        return ELeaderboardDataRequest.friends;
      case 3:
        return ELeaderboardDataRequest.users;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ELeaderboardDataRequest'. The value was: '$value'",
        );
    }
  }
}
