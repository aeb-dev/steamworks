// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EChatRoomEnterResponseAliasDart = int;
typedef EChatRoomEnterResponseAliasC = Int32;

enum EChatRoomEnterResponse {
  success(1),
  doesntExist(2),
  notAllowed(3),
  full(4),
  error(5),
  banned(6),
  limited(7),
  clanDisabled(8),
  communityBan(9),
  memberBlockedYou(10),
  youBlockedMember(11),
  ratelimitExceeded(15),
  ;

  final int value;

  const EChatRoomEnterResponse(this.value);

  factory EChatRoomEnterResponse.fromValue(int value) {
    switch (value) {
      case 1:
        return EChatRoomEnterResponse.success;
      case 2:
        return EChatRoomEnterResponse.doesntExist;
      case 3:
        return EChatRoomEnterResponse.notAllowed;
      case 4:
        return EChatRoomEnterResponse.full;
      case 5:
        return EChatRoomEnterResponse.error;
      case 6:
        return EChatRoomEnterResponse.banned;
      case 7:
        return EChatRoomEnterResponse.limited;
      case 8:
        return EChatRoomEnterResponse.clanDisabled;
      case 9:
        return EChatRoomEnterResponse.communityBan;
      case 10:
        return EChatRoomEnterResponse.memberBlockedYou;
      case 11:
        return EChatRoomEnterResponse.youBlockedMember;
      case 15:
        return EChatRoomEnterResponse.ratelimitExceeded;
      default:
        throw "Unknown value for 'EChatRoomEnterResponse'. The value was: '$value'";
    }
  }
}
