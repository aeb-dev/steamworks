// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'ESteamItemFlags'. The value was: '$value'";
    }
  }
}
