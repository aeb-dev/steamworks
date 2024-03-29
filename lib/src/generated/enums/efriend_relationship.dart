// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EFriendRelationshipAliasDart = int;
typedef EFriendRelationshipAliasC = Int32;

enum EFriendRelationship {
  none(0),
  blocked(1),
  requestRecipient(2),
  friend(3),
  requestInitiator(4),
  ignored(5),
  ignoredFriend(6),
  suggestedDEPRECATED(7),
  max(8),
  ;

  final int value;

  const EFriendRelationship(this.value);

  factory EFriendRelationship.fromValue(int value) {
    switch (value) {
      case 0:
        return EFriendRelationship.none;
      case 1:
        return EFriendRelationship.blocked;
      case 2:
        return EFriendRelationship.requestRecipient;
      case 3:
        return EFriendRelationship.friend;
      case 4:
        return EFriendRelationship.requestInitiator;
      case 5:
        return EFriendRelationship.ignored;
      case 6:
        return EFriendRelationship.ignoredFriend;
      case 7:
        return EFriendRelationship.suggestedDEPRECATED;
      case 8:
        return EFriendRelationship.max;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EFriendRelationship'. The value was: '$value'",
        );
    }
  }
}
