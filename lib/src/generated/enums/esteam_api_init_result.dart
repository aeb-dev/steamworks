// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamApiInitResultAliasDart = int;
typedef ESteamApiInitResultAliasC = Int32;

enum ESteamApiInitResult {
  ok(0),
  failedGeneric(1),
  noSteamClient(2),
  versionMismatch(3),
  ;

  final int value;

  const ESteamApiInitResult(this.value);

  factory ESteamApiInitResult.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamApiInitResult.ok;
      case 1:
        return ESteamApiInitResult.failedGeneric;
      case 2:
        return ESteamApiInitResult.noSteamClient;
      case 3:
        return ESteamApiInitResult.versionMismatch;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamApiInitResult'. The value was: '$value'",
        );
    }
  }
}
