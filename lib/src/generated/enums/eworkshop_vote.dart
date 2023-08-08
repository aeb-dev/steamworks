// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EWorkshopVoteAliasDart = int;
typedef EWorkshopVoteAliasC = Int32;

enum EWorkshopVote {
  unvoted(0),
  for_(1),
  against(2),
  later(3),
  ;

  final int value;

  const EWorkshopVote(this.value);

  factory EWorkshopVote.fromValue(int value) {
    switch (value) {
      case 0:
        return EWorkshopVote.unvoted;
      case 1:
        return EWorkshopVote.for_;
      case 2:
        return EWorkshopVote.against;
      case 3:
        return EWorkshopVote.later;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EWorkshopVote'. The value was: '$value'",
        );
    }
  }
}
