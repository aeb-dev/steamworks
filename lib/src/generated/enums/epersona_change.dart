// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EPersonaChangeAliasDart = int;
typedef EPersonaChangeAliasC = Int32;

enum EPersonaChange {
  name(1),
  status(2),
  comeOnline(4),
  goneOffline(8),
  gamePlayed(16),
  gameServer(32),
  avatar(64),
  joinedSource(128),
  leftSource(256),
  relationshipChanged(512),
  nameFirstSet(1024),
  broadcast(2048),
  nickname(4096),
  steamLevel(8192),
  richPresence(16384),
  ;

  final int value;

  const EPersonaChange(this.value);

  factory EPersonaChange.fromValue(int value) {
    switch (value) {
      case 1:
        return EPersonaChange.name;
      case 2:
        return EPersonaChange.status;
      case 4:
        return EPersonaChange.comeOnline;
      case 8:
        return EPersonaChange.goneOffline;
      case 16:
        return EPersonaChange.gamePlayed;
      case 32:
        return EPersonaChange.gameServer;
      case 64:
        return EPersonaChange.avatar;
      case 128:
        return EPersonaChange.joinedSource;
      case 256:
        return EPersonaChange.leftSource;
      case 512:
        return EPersonaChange.relationshipChanged;
      case 1024:
        return EPersonaChange.nameFirstSet;
      case 2048:
        return EPersonaChange.broadcast;
      case 4096:
        return EPersonaChange.nickname;
      case 8192:
        return EPersonaChange.steamLevel;
      case 16384:
        return EPersonaChange.richPresence;
      default:
        throw "Unknown value for 'EPersonaChange'. The value was: '$value'";
    }
  }
}
