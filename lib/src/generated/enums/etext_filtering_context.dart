// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ETextFilteringContextAliasDart = int;
typedef ETextFilteringContextAliasC = Int32;

enum ETextFilteringContext {
  unknown(0),
  gameContent(1),
  chat(2),
  name(3),
  ;

  final int value;

  const ETextFilteringContext(this.value);

  factory ETextFilteringContext.fromValue(int value) {
    switch (value) {
      case 0:
        return ETextFilteringContext.unknown;
      case 1:
        return ETextFilteringContext.gameContent;
      case 2:
        return ETextFilteringContext.chat;
      case 3:
        return ETextFilteringContext.name;
      default:
        throw "Unknown value for 'ETextFilteringContext'. The value was: '$value'";
    }
  }
}
