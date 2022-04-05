// ignore_for_file: public_member_api_docs
typedef EUserRestriction = int;

class EUserRestrictionEnum {
  static const int none = 0;
  static const int unknown = 1;
  static const int anyChat = 2;
  static const int voiceChat = 4;
  static const int groupChat = 8;
  static const int rating = 16;
  static const int gameInvites = 32;
  static const int trading = 64;
}
