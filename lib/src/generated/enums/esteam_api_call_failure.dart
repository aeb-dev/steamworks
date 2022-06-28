// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamApiCallFailureAliasDart = int;
typedef ESteamApiCallFailureAliasC = Int32;

enum ESteamApiCallFailure {
  none(-1),
  steamGone(0),
  networkFailure(1),
  invalidHandle(2),
  mismatchedCallback(3),
  ;

  final int value;

  const ESteamApiCallFailure(this.value);

  factory ESteamApiCallFailure.fromValue(int value) {
    switch (value) {
      case -1:
        return ESteamApiCallFailure.none;
      case 0:
        return ESteamApiCallFailure.steamGone;
      case 1:
        return ESteamApiCallFailure.networkFailure;
      case 2:
        return ESteamApiCallFailure.invalidHandle;
      case 3:
        return ESteamApiCallFailure.mismatchedCallback;
      default:
        throw "Unknown value for 'ESteamApiCallFailure'. The value was: '$value'";
    }
  }
}
