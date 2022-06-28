// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'ELeaderboardDisplayType'. The value was: '$value'";
    }
  }
}
