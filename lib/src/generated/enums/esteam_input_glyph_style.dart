// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ESteamInputGlyphStyleAliasDart = int;
typedef ESteamInputGlyphStyleAliasC = Int32;

enum ESteamInputGlyphStyle {
  knockout(0),
  light(1),
  dark(2),
  neutralColorABXY(16),
  solidABXY(32),
  ;

  final int value;

  const ESteamInputGlyphStyle(this.value);

  factory ESteamInputGlyphStyle.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputGlyphStyle.knockout;
      case 1:
        return ESteamInputGlyphStyle.light;
      case 2:
        return ESteamInputGlyphStyle.dark;
      case 16:
        return ESteamInputGlyphStyle.neutralColorABXY;
      case 32:
        return ESteamInputGlyphStyle.solidABXY;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ESteamInputGlyphStyle'. The value was: '$value'",
        );
    }
  }
}
