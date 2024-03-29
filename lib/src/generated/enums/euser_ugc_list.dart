// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EUserUgcListAliasDart = int;
typedef EUserUgcListAliasC = Int32;

enum EUserUgcList {
  published(0),
  votedOn(1),
  votedUp(2),
  votedDown(3),
  willVoteLater(4),
  favorited(5),
  subscribed(6),
  usedOrPlayed(7),
  followed(8),
  ;

  final int value;

  const EUserUgcList(this.value);

  factory EUserUgcList.fromValue(int value) {
    switch (value) {
      case 0:
        return EUserUgcList.published;
      case 1:
        return EUserUgcList.votedOn;
      case 2:
        return EUserUgcList.votedUp;
      case 3:
        return EUserUgcList.votedDown;
      case 4:
        return EUserUgcList.willVoteLater;
      case 5:
        return EUserUgcList.favorited;
      case 6:
        return EUserUgcList.subscribed;
      case 7:
        return EUserUgcList.usedOrPlayed;
      case 8:
        return EUserUgcList.followed;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EUserUgcList'. The value was: '$value'",
        );
    }
  }
}
