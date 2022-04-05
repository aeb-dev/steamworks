// ignore_for_file: public_member_api_docs
typedef ESteamNetworkingConnectionState = int;

class ESteamNetworkingConnectionStateEnum {
  static const int dead = -3;
  static const int linger = -2;
  static const int finWait = -1;
  static const int none = 0;
  static const int connecting = 1;
  static const int findingRoute = 2;
  static const int connected = 3;
  static const int closedByPeer = 4;
  static const int problemDetectedLocally = 5;
}
