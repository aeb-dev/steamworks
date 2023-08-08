// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EWorkshopEnumerationTypeAliasDart = int;
typedef EWorkshopEnumerationTypeAliasC = Int32;

enum EWorkshopEnumerationType {
  rankedByVote(0),
  recent(1),
  trending(2),
  favoritesOfFriends(3),
  votedByFriends(4),
  contentByFriends(5),
  recentFromFollowedUsers(6),
  ;

  final int value;

  const EWorkshopEnumerationType(this.value);

  factory EWorkshopEnumerationType.fromValue(int value) {
    switch (value) {
      case 0:
        return EWorkshopEnumerationType.rankedByVote;
      case 1:
        return EWorkshopEnumerationType.recent;
      case 2:
        return EWorkshopEnumerationType.trending;
      case 3:
        return EWorkshopEnumerationType.favoritesOfFriends;
      case 4:
        return EWorkshopEnumerationType.votedByFriends;
      case 5:
        return EWorkshopEnumerationType.contentByFriends;
      case 6:
        return EWorkshopEnumerationType.recentFromFollowedUsers;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EWorkshopEnumerationType'. The value was: '$value'",
        );
    }
  }
}
