// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamItemFlagsAliasDart = int;
typedef ESteamItemFlagsAliasC = Int32;

enum ESteamItemFlags {
  noTrade(1),
  removed(256),
  consumed(512),
  ;

  final int value;

  const ESteamItemFlags(this.value);

  factory ESteamItemFlags.fromValue(int value) {
    switch (value) {
      case 1:
        return ESteamItemFlags.noTrade;
      case 256:
        return ESteamItemFlags.removed;
      case 512:
        return ESteamItemFlags.consumed;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamItemFlags'. The value was: '$value'",
        );
    }
  }
}
