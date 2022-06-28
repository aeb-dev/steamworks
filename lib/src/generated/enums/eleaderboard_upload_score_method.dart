// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'ELeaderboardUploadScoreMethod'. The value was: '$value'";
    }
  }
}
