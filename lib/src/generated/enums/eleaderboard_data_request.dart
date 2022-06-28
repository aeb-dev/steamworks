// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'ELeaderboardDataRequest'. The value was: '$value'";
    }
  }
}
