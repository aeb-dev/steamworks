// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EUserUgcListSortOrderAliasDart = int;
typedef EUserUgcListSortOrderAliasC = Int32;

enum EUserUgcListSortOrder {
  creationOrderDesc(0),
  creationOrderAsc(1),
  titleAsc(2),
  lastUpdatedDesc(3),
  subscriptionDateDesc(4),
  voteScoreDesc(5),
  forModeration(6),
  ;

  final int value;

  const EUserUgcListSortOrder(this.value);

  factory EUserUgcListSortOrder.fromValue(int value) {
    switch (value) {
      case 0:
        return EUserUgcListSortOrder.creationOrderDesc;
      case 1:
        return EUserUgcListSortOrder.creationOrderAsc;
      case 2:
        return EUserUgcListSortOrder.titleAsc;
      case 3:
        return EUserUgcListSortOrder.lastUpdatedDesc;
      case 4:
        return EUserUgcListSortOrder.subscriptionDateDesc;
      case 5:
        return EUserUgcListSortOrder.voteScoreDesc;
      case 6:
        return EUserUgcListSortOrder.forModeration;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EUserUgcListSortOrder'. The value was: '$value'",
        );
    }
  }
}
