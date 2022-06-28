// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EFriendFlagsAliasDart = int;
typedef EFriendFlagsAliasC = Int32;

enum EFriendFlags {
  none(0),
  blocked(1),
  friendshipRequested(2),
  immediate(4),
  clanMember(8),
  onGameServer(16),
  requestingFriendship(128),
  requestingInfo(256),
  ignored(512),
  ignoredFriend(1024),
  chatMember(4096),
  all(65535),
  ;

  final int value;

  const EFriendFlags(this.value);

  factory EFriendFlags.fromValue(int value) {
    switch (value) {
      case 0:
        return EFriendFlags.none;
      case 1:
        return EFriendFlags.blocked;
      case 2:
        return EFriendFlags.friendshipRequested;
      case 4:
        return EFriendFlags.immediate;
      case 8:
        return EFriendFlags.clanMember;
      case 16:
        return EFriendFlags.onGameServer;
      case 128:
        return EFriendFlags.requestingFriendship;
      case 256:
        return EFriendFlags.requestingInfo;
      case 512:
        return EFriendFlags.ignored;
      case 1024:
        return EFriendFlags.ignoredFriend;
      case 4096:
        return EFriendFlags.chatMember;
      case 65535:
        return EFriendFlags.all;
      default:
        throw "Unknown value for 'EFriendFlags'. The value was: '$value'";
    }
  }
}
