// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EChatEntryTypeAliasDart = int;
typedef EChatEntryTypeAliasC = Int32;

enum EChatEntryType {
  invalid(0),
  chatMsg(1),
  typing(2),
  inviteGame(3),
  emote(4),
  leftConversation(6),
  entered(7),
  wasKicked(8),
  wasBanned(9),
  disconnected(10),
  historicalChat(11),
  linkBlocked(14),
  ;

  final int value;

  const EChatEntryType(this.value);

  factory EChatEntryType.fromValue(int value) {
    switch (value) {
      case 0:
        return EChatEntryType.invalid;
      case 1:
        return EChatEntryType.chatMsg;
      case 2:
        return EChatEntryType.typing;
      case 3:
        return EChatEntryType.inviteGame;
      case 4:
        return EChatEntryType.emote;
      case 6:
        return EChatEntryType.leftConversation;
      case 7:
        return EChatEntryType.entered;
      case 8:
        return EChatEntryType.wasKicked;
      case 9:
        return EChatEntryType.wasBanned;
      case 10:
        return EChatEntryType.disconnected;
      case 11:
        return EChatEntryType.historicalChat;
      case 14:
        return EChatEntryType.linkBlocked;
      default:
        throw "Unknown value for 'EChatEntryType'. The value was: '$value'";
    }
  }
}
