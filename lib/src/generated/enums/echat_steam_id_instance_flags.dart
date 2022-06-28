// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EChatSteamIdInstanceFlagsAliasDart = int;
typedef EChatSteamIdInstanceFlagsAliasC = Int32;

enum EChatSteamIdInstanceFlags {
  accountInstanceMask(4095),
  instanceFlagMMSLobby(131072),
  instanceFlagLobby(262144),
  instanceFlagClan(524288),
  ;

  final int value;

  const EChatSteamIdInstanceFlags(this.value);

  factory EChatSteamIdInstanceFlags.fromValue(int value) {
    switch (value) {
      case 4095:
        return EChatSteamIdInstanceFlags.accountInstanceMask;
      case 131072:
        return EChatSteamIdInstanceFlags.instanceFlagMMSLobby;
      case 262144:
        return EChatSteamIdInstanceFlags.instanceFlagLobby;
      case 524288:
        return EChatSteamIdInstanceFlags.instanceFlagClan;
      default:
        throw "Unknown value for 'EChatSteamIdInstanceFlags'. The value was: '$value'";
    }
  }
}
