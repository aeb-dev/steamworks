// ignore_for_file: public_member_api_docs
typedef EFriendFlags = int;

class EFriendFlagsEnum {
  static const int none = 0;
  static const int blocked = 1;
  static const int friendshipRequested = 2;
  static const int immediate = 4;
  static const int clanMember = 8;
  static const int onGameServer = 16;
  static const int requestingFriendship = 128;
  static const int requestingInfo = 256;
  static const int ignored = 512;
  static const int ignoredFriend = 1024;
  static const int chatMember = 4096;
  static const int all = 65535;
}
