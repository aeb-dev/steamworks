// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EUserRestrictionAliasDart = int;
typedef EUserRestrictionAliasC = Int32;

enum EUserRestriction {
  none(0),
  unknown(1),
  anyChat(2),
  voiceChat(4),
  groupChat(8),
  rating(16),
  gameInvites(32),
  trading(64),
  ;

  final int value;

  const EUserRestriction(this.value);

  factory EUserRestriction.fromValue(int value) {
    switch (value) {
      case 0:
        return EUserRestriction.none;
      case 1:
        return EUserRestriction.unknown;
      case 2:
        return EUserRestriction.anyChat;
      case 4:
        return EUserRestriction.voiceChat;
      case 8:
        return EUserRestriction.groupChat;
      case 16:
        return EUserRestriction.rating;
      case 32:
        return EUserRestriction.gameInvites;
      case 64:
        return EUserRestriction.trading;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EUserRestriction'. The value was: '$value'",
        );
    }
  }
}
