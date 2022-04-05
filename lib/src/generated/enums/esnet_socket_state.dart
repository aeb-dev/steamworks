// ignore_for_file: public_member_api_docs
typedef ESnetSocketState = int;

class ESnetSocketStateEnum {
  static const int invalid = 0;
  static const int connected = 1;
  static const int initiated = 10;
  static const int localCandidatesFound = 11;
  static const int receivedRemoteCandidates = 12;
  static const int challengeHandshake = 15;
  static const int disconnecting = 21;
  static const int localDisconnect = 22;
  static const int timeoutDuringConnect = 23;
  static const int remoteEndDisconnected = 24;
  static const int connectionBroken = 25;
}
