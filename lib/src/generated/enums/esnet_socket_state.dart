// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESnetSocketStateAliasDart = int;
typedef ESnetSocketStateAliasC = Int32;

enum ESnetSocketState {
  invalid(0),
  connected(1),
  initiated(10),
  localCandidatesFound(11),
  receivedRemoteCandidates(12),
  challengeHandshake(15),
  disconnecting(21),
  localDisconnect(22),
  timeoutDuringConnect(23),
  remoteEndDisconnected(24),
  connectionBroken(25),
  ;

  final int value;

  const ESnetSocketState(this.value);

  factory ESnetSocketState.fromValue(int value) {
    switch (value) {
      case 0:
        return ESnetSocketState.invalid;
      case 1:
        return ESnetSocketState.connected;
      case 10:
        return ESnetSocketState.initiated;
      case 11:
        return ESnetSocketState.localCandidatesFound;
      case 12:
        return ESnetSocketState.receivedRemoteCandidates;
      case 15:
        return ESnetSocketState.challengeHandshake;
      case 21:
        return ESnetSocketState.disconnecting;
      case 22:
        return ESnetSocketState.localDisconnect;
      case 23:
        return ESnetSocketState.timeoutDuringConnect;
      case 24:
        return ESnetSocketState.remoteEndDisconnected;
      case 25:
        return ESnetSocketState.connectionBroken;
      default:
        throw "Unknown value for 'ESnetSocketState'. The value was: '$value'";
    }
  }
}
