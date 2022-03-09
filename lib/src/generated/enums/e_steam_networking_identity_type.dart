typedef ESteamNetworkingIdentityType = int;

class ESteamNetworkingIdentityTypeEnum {
  static const int invalid = 0;
  static const int iPAddress = 1;
  static const int genericString = 2;
  static const int genericBytes = 3;
  static const int unknownType = 4;
  static const int steamID = 16;
  static const int xboxPairwiseID = 17;
  static const int sonyPSN = 18;
  static const int googleStadia = 19;
  static const int force32bit = 2147483647;
}
