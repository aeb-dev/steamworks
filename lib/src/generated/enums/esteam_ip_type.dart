// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamIpTypeAliasDart = int;
typedef ESteamIpTypeAliasC = Int32;

enum ESteamIpType {
  v4(0),
  v6(1),
  ;

  final int value;

  const ESteamIpType(this.value);

  factory ESteamIpType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamIpType.v4;
      case 1:
        return ESteamIpType.v6;
      default:
        throw "Unknown value for 'ESteamIpType'. The value was: '$value'";
    }
  }
}
