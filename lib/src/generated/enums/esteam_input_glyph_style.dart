// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'ESteamInputGlyphStyle'. The value was: '$value'";
    }
  }
}
