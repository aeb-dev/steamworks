// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ELeaderboardUploadScoreMethodAliasDart = int;
typedef ELeaderboardUploadScoreMethodAliasC = Int32;

enum ELeaderboardUploadScoreMethod {
  none(0),
  keepBest(1),
  forceUpdate(2),
  ;

  final int value;

  const ELeaderboardUploadScoreMethod(this.value);

  factory ELeaderboardUploadScoreMethod.fromValue(int value) {
    switch (value) {
      case 0:
        return ELeaderboardUploadScoreMethod.none;
      case 1:
        return ELeaderboardUploadScoreMethod.keepBest;
      case 2:
        return ELeaderboardUploadScoreMethod.forceUpdate;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ELeaderboardUploadScoreMethod'. The value was: '$value'",
        );
    }
  }
}
