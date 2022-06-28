// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamInputActionEventTypeAliasDart = int;
typedef ESteamInputActionEventTypeAliasC = Int32;

enum ESteamInputActionEventType {
  digitalAction(0),
  analogAction(1),
  ;

  final int value;

  const ESteamInputActionEventType(this.value);

  factory ESteamInputActionEventType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputActionEventType.digitalAction;
      case 1:
        return ESteamInputActionEventType.analogAction;
      default:
        throw "Unknown value for 'ESteamInputActionEventType'. The value was: '$value'";
    }
  }
}
