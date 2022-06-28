// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EGameSearchErrorCodeAliasDart = int;
typedef EGameSearchErrorCodeAliasC = Int32;

enum EGameSearchErrorCode {
  ok(1),
  failedSearchAlreadyInProgress(2),
  failedNoSearchInProgress(3),
  failedNotLobbyLeader(4),
  failedNoHostAvailable(5),
  failedSearchParamsInvalid(6),
  failedOffline(7),
  failedNotAuthorized(8),
  failedUnknownError(9),
  ;

  final int value;

  const EGameSearchErrorCode(this.value);

  factory EGameSearchErrorCode.fromValue(int value) {
    switch (value) {
      case 1:
        return EGameSearchErrorCode.ok;
      case 2:
        return EGameSearchErrorCode.failedSearchAlreadyInProgress;
      case 3:
        return EGameSearchErrorCode.failedNoSearchInProgress;
      case 4:
        return EGameSearchErrorCode.failedNotLobbyLeader;
      case 5:
        return EGameSearchErrorCode.failedNoHostAvailable;
      case 6:
        return EGameSearchErrorCode.failedSearchParamsInvalid;
      case 7:
        return EGameSearchErrorCode.failedOffline;
      case 8:
        return EGameSearchErrorCode.failedNotAuthorized;
      case 9:
        return EGameSearchErrorCode.failedUnknownError;
      default:
        throw "Unknown value for 'EGameSearchErrorCode'. The value was: '$value'";
    }
  }
}
