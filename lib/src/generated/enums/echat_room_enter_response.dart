// ignore_for_file: public_member_api_docs
typedef EChatRoomEnterResponse = int;

class EChatRoomEnterResponseEnum {
  static const int success = 1;
  static const int doesntExist = 2;
  static const int notAllowed = 3;
  static const int full = 4;
  static const int error = 5;
  static const int banned = 6;
  static const int limited = 7;
  static const int clanDisabled = 8;
  static const int communityBan = 9;
  static const int memberBlockedYou = 10;
  static const int youBlockedMember = 11;
  static const int ratelimitExceeded = 15;
}
