// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

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
        throw UnknownEnumValueException(
          "Unknown value for 'EChatSteamIdInstanceFlags'. The value was: '$value'",
        );
    }
  }
}
