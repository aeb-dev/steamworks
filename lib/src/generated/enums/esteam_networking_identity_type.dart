// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamNetworkingIdentityTypeAliasDart = int;
typedef ESteamNetworkingIdentityTypeAliasC = Int32;

enum ESteamNetworkingIdentityType {
  invalid(0),
  ipAddress(1),
  genericString(2),
  genericBytes(3),
  unknownType(4),
  steamId(16),
  xboxPairwiseId(17),
  sonyPsn(18),
  googleStadia(19),
  force32bit(2147483647),
  ;

  final int value;

  const ESteamNetworkingIdentityType(this.value);

  factory ESteamNetworkingIdentityType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamNetworkingIdentityType.invalid;
      case 1:
        return ESteamNetworkingIdentityType.ipAddress;
      case 2:
        return ESteamNetworkingIdentityType.genericString;
      case 3:
        return ESteamNetworkingIdentityType.genericBytes;
      case 4:
        return ESteamNetworkingIdentityType.unknownType;
      case 16:
        return ESteamNetworkingIdentityType.steamId;
      case 17:
        return ESteamNetworkingIdentityType.xboxPairwiseId;
      case 18:
        return ESteamNetworkingIdentityType.sonyPsn;
      case 19:
        return ESteamNetworkingIdentityType.googleStadia;
      case 2147483647:
        return ESteamNetworkingIdentityType.force32bit;
      default:
        throw "Unknown value for 'ESteamNetworkingIdentityType'. The value was: '$value'";
    }
  }
}
