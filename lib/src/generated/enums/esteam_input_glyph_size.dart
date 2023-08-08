// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamInputGlyphSizeAliasDart = int;
typedef ESteamInputGlyphSizeAliasC = Int32;

enum ESteamInputGlyphSize {
  small(0),
  medium(1),
  large(2),
  count(3),
  ;

  final int value;

  const ESteamInputGlyphSize(this.value);

  factory ESteamInputGlyphSize.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputGlyphSize.small;
      case 1:
        return ESteamInputGlyphSize.medium;
      case 2:
        return ESteamInputGlyphSize.large;
      case 3:
        return ESteamInputGlyphSize.count;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamInputGlyphSize'. The value was: '$value'",
        );
    }
  }
}
