// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EAccountTypeAliasDart = int;
typedef EAccountTypeAliasC = Int32;

enum EAccountType {
  invalid(0),
  individual(1),
  multiseat(2),
  gameServer(3),
  anonGameServer(4),
  pending(5),
  contentServer(6),
  clan(7),
  chat(8),
  consoleUser(9),
  anonUser(10),
  max(11),
  ;

  final int value;

  const EAccountType(this.value);

  factory EAccountType.fromValue(int value) {
    switch (value) {
      case 0:
        return EAccountType.invalid;
      case 1:
        return EAccountType.individual;
      case 2:
        return EAccountType.multiseat;
      case 3:
        return EAccountType.gameServer;
      case 4:
        return EAccountType.anonGameServer;
      case 5:
        return EAccountType.pending;
      case 6:
        return EAccountType.contentServer;
      case 7:
        return EAccountType.clan;
      case 8:
        return EAccountType.chat;
      case 9:
        return EAccountType.consoleUser;
      case 10:
        return EAccountType.anonUser;
      case 11:
        return EAccountType.max;
      default:
        throw "Unknown value for 'EAccountType'. The value was: '$value'";
    }
  }
}
