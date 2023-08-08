// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EAuthSessionResponseAliasDart = int;
typedef EAuthSessionResponseAliasC = Int32;

enum EAuthSessionResponse {
  ok(0),
  userNotConnectedToSteam(1),
  noLicenseOrExpired(2),
  vACBanned(3),
  loggedInElseWhere(4),
  vACCheckTimedOut(5),
  authTicketCanceled(6),
  authTicketInvalidAlreadyUsed(7),
  authTicketInvalid(8),
  publisherIssuedBan(9),
  authTicketNetworkIdentityFailure(10),
  ;

  final int value;

  const EAuthSessionResponse(this.value);

  factory EAuthSessionResponse.fromValue(int value) {
    switch (value) {
      case 0:
        return EAuthSessionResponse.ok;
      case 1:
        return EAuthSessionResponse.userNotConnectedToSteam;
      case 2:
        return EAuthSessionResponse.noLicenseOrExpired;
      case 3:
        return EAuthSessionResponse.vACBanned;
      case 4:
        return EAuthSessionResponse.loggedInElseWhere;
      case 5:
        return EAuthSessionResponse.vACCheckTimedOut;
      case 6:
        return EAuthSessionResponse.authTicketCanceled;
      case 7:
        return EAuthSessionResponse.authTicketInvalidAlreadyUsed;
      case 8:
        return EAuthSessionResponse.authTicketInvalid;
      case 9:
        return EAuthSessionResponse.publisherIssuedBan;
      case 10:
        return EAuthSessionResponse.authTicketNetworkIdentityFailure;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EAuthSessionResponse'. The value was: '$value'",
        );
    }
  }
}
