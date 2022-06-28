// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EP2pSessionErrorAliasDart = int;
typedef EP2pSessionErrorAliasC = Int32;

enum EP2pSessionError {
  none(0),
  notRunningAppDeleted(1),
  noRightsToApp(2),
  destinationNotLoggedInDeleted(3),
  timeout(4),
  max(5),
  ;

  final int value;

  const EP2pSessionError(this.value);

  factory EP2pSessionError.fromValue(int value) {
    switch (value) {
      case 0:
        return EP2pSessionError.none;
      case 1:
        return EP2pSessionError.notRunningAppDeleted;
      case 2:
        return EP2pSessionError.noRightsToApp;
      case 3:
        return EP2pSessionError.destinationNotLoggedInDeleted;
      case 4:
        return EP2pSessionError.timeout;
      case 5:
        return EP2pSessionError.max;
      default:
        throw "Unknown value for 'EP2pSessionError'. The value was: '$value'";
    }
  }
}
