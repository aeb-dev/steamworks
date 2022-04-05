// ignore_for_file: public_member_api_docs
typedef EBeginAuthSessionResult = int;

class EBeginAuthSessionResultEnum {
  static const int ok = 0;
  static const int invalidTicket = 1;
  static const int duplicateRequest = 2;
  static const int invalidVersion = 3;
  static const int gameMismatch = 4;
  static const int expiredTicket = 5;
}
