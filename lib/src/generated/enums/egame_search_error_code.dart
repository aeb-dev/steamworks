// ignore_for_file: public_member_api_docs
typedef EGameSearchErrorCode = int;

class EGameSearchErrorCodeEnum {
  static const int ok = 1;
  static const int failedSearchAlreadyInProgress = 2;
  static const int failedNoSearchInProgress = 3;
  static const int failedNotLobbyLeader = 4;
  static const int failedNoHostAvailable = 5;
  static const int failedSearchParamsInvalid = 6;
  static const int failedOffline = 7;
  static const int failedNotAuthorized = 8;
  static const int failedUnknownError = 9;
}
