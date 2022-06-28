// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EUgcReadActionAliasDart = int;
typedef EUgcReadActionAliasC = Int32;

enum EUgcReadAction {
  ontinueReadingUntilFinished(0),
  ontinueReading(1),
  lose(2),
  ;

  final int value;

  const EUgcReadAction(this.value);

  factory EUgcReadAction.fromValue(int value) {
    switch (value) {
      case 0:
        return EUgcReadAction.ontinueReadingUntilFinished;
      case 1:
        return EUgcReadAction.ontinueReading;
      case 2:
        return EUgcReadAction.lose;
      default:
        throw "Unknown value for 'EUgcReadAction'. The value was: '$value'";
    }
  }
}
