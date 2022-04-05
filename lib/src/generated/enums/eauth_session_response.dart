// ignore_for_file: public_member_api_docs
typedef EAuthSessionResponse = int;

class EAuthSessionResponseEnum {
  static const int ok = 0;
  static const int userNotConnectedToSteam = 1;
  static const int noLicenseOrExpired = 2;
  static const int vACBanned = 3;
  static const int loggedInElseWhere = 4;
  static const int vACCheckTimedOut = 5;
  static const int authTicketCanceled = 6;
  static const int authTicketInvalidAlreadyUsed = 7;
  static const int authTicketInvalid = 8;
  static const int publisherIssuedBan = 9;
}
