// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamNetConnectionEndAliasDart = int;
typedef ESteamNetConnectionEndAliasC = Int32;

enum ESteamNetConnectionEnd {
  invalid(0),
  appMin(1000),
  appGeneric(1000),
  appMax(1999),
  appExceptionMin(2000),
  appExceptionGeneric(2000),
  appExceptionMax(2999),
  localMin(3000),
  localOfflineMode(3001),
  localManyRelayConnectivity(3002),
  localHostedServerPrimaryRelay(3003),
  localNetworkConfig(3004),
  localRights(3005),
  localP2pIceNoPublicAddresses(3006),
  localMax(3999),
  remoteMin(4000),
  remoteTimeout(4001),
  remoteBadCrypt(4002),
  remoteBadCert(4003),
  remoteBadProtocolVersion(4006),
  remoteP2pIceNoPublicAddresses(4007),
  remoteMax(4999),
  miscMin(5000),
  miscGeneric(5001),
  miscInternalError(5002),
  miscTimeout(5003),
  miscSteamConnectivity(5005),
  miscNoRelaySessionsToClient(5006),
  miscP2pRendezvous(5008),
  miscP2pNatFirewall(5009),
  miscPeerSentNoConnection(5010),
  miscMax(5999),
  ;

  final int value;

  const ESteamNetConnectionEnd(this.value);

  factory ESteamNetConnectionEnd.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamNetConnectionEnd.invalid;
      case 1000:
        return ESteamNetConnectionEnd.appMin;
      case 1999:
        return ESteamNetConnectionEnd.appMax;
      case 2000:
        return ESteamNetConnectionEnd.appExceptionMin;
      case 2999:
        return ESteamNetConnectionEnd.appExceptionMax;
      case 3000:
        return ESteamNetConnectionEnd.localMin;
      case 3001:
        return ESteamNetConnectionEnd.localOfflineMode;
      case 3002:
        return ESteamNetConnectionEnd.localManyRelayConnectivity;
      case 3003:
        return ESteamNetConnectionEnd.localHostedServerPrimaryRelay;
      case 3004:
        return ESteamNetConnectionEnd.localNetworkConfig;
      case 3005:
        return ESteamNetConnectionEnd.localRights;
      case 3006:
        return ESteamNetConnectionEnd.localP2pIceNoPublicAddresses;
      case 3999:
        return ESteamNetConnectionEnd.localMax;
      case 4000:
        return ESteamNetConnectionEnd.remoteMin;
      case 4001:
        return ESteamNetConnectionEnd.remoteTimeout;
      case 4002:
        return ESteamNetConnectionEnd.remoteBadCrypt;
      case 4003:
        return ESteamNetConnectionEnd.remoteBadCert;
      case 4006:
        return ESteamNetConnectionEnd.remoteBadProtocolVersion;
      case 4007:
        return ESteamNetConnectionEnd.remoteP2pIceNoPublicAddresses;
      case 4999:
        return ESteamNetConnectionEnd.remoteMax;
      case 5000:
        return ESteamNetConnectionEnd.miscMin;
      case 5001:
        return ESteamNetConnectionEnd.miscGeneric;
      case 5002:
        return ESteamNetConnectionEnd.miscInternalError;
      case 5003:
        return ESteamNetConnectionEnd.miscTimeout;
      case 5005:
        return ESteamNetConnectionEnd.miscSteamConnectivity;
      case 5006:
        return ESteamNetConnectionEnd.miscNoRelaySessionsToClient;
      case 5008:
        return ESteamNetConnectionEnd.miscP2pRendezvous;
      case 5009:
        return ESteamNetConnectionEnd.miscP2pNatFirewall;
      case 5010:
        return ESteamNetConnectionEnd.miscPeerSentNoConnection;
      case 5999:
        return ESteamNetConnectionEnd.miscMax;
      default:
        throw "Unknown value for 'ESteamNetConnectionEnd'. The value was: '$value'";
    }
  }
}
