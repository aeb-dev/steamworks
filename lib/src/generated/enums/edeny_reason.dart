// ignore_for_file: public_member_api_docs
typedef EDenyReason = int;

class EDenyReasonEnum {
  static const int invalid = 0;
  static const int invalidVersion = 1;
  static const int generic = 2;
  static const int notLoggedOn = 3;
  static const int noLicense = 4;
  static const int cheater = 5;
  static const int loggedInElseWhere = 6;
  static const int unknownText = 7;
  static const int incompatibleAnticheat = 8;
  static const int memoryCorruption = 9;
  static const int incompatibleSoftware = 10;
  static const int steamConnectionLost = 11;
  static const int steamConnectionError = 12;
  static const int steamResponseTimedOut = 13;
  static const int steamValidationStalled = 14;
  static const int steamOwnerLeftGuestUser = 15;
}
