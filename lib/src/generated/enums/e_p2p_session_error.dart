typedef EP2pSessionError = int;

class EP2pSessionErrorEnum {
  static const int none = 0;
  static const int notRunningAppDELETED = 1;
  static const int noRightsToApp = 2;
  static const int destinationNotLoggedInDELETED = 3;
  static const int timeout = 4;
  static const int max = 5;
}
