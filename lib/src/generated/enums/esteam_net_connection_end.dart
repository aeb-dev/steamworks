// ignore_for_file: public_member_api_docs
typedef ESteamNetConnectionEnd = int;

class ESteamNetConnectionEndEnum {
  static const int invalid = 0;
  static const int appMin = 1000;
  static const int appGeneric = 1000;
  static const int appMax = 1999;
  static const int appExceptionMin = 2000;
  static const int appExceptionGeneric = 2000;
  static const int appExceptionMax = 2999;
  static const int localMin = 3000;
  static const int localOfflineMode = 3001;
  static const int localManyRelayConnectivity = 3002;
  static const int localHostedServerPrimaryRelay = 3003;
  static const int localNetworkConfig = 3004;
  static const int localRights = 3005;
  static const int localP2pIceNoPublicAddresses = 3006;
  static const int localMax = 3999;
  static const int remoteMin = 4000;
  static const int remoteTimeout = 4001;
  static const int remoteBadCrypt = 4002;
  static const int remoteBadCert = 4003;
  static const int remoteBadProtocolVersion = 4006;
  static const int remoteP2pIceNoPublicAddresses = 4007;
  static const int remoteMax = 4999;
  static const int miscMin = 5000;
  static const int miscGeneric = 5001;
  static const int miscInternalError = 5002;
  static const int miscTimeout = 5003;
  static const int miscSteamConnectivity = 5005;
  static const int miscNoRelaySessionsToClient = 5006;
  static const int miscP2pRendezvous = 5008;
  static const int miscP2pNatFirewall = 5009;
  static const int miscPeerSentNoConnection = 5010;
  static const int miscMax = 5999;
}
