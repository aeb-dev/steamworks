// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EBeginAuthSessionResultAliasDart = int;
typedef EBeginAuthSessionResultAliasC = Int32;

enum EBeginAuthSessionResult {
  ok(0),
  invalidTicket(1),
  duplicateRequest(2),
  invalidVersion(3),
  gameMismatch(4),
  expiredTicket(5),
  ;

  final int value;

  const EBeginAuthSessionResult(this.value);

  factory EBeginAuthSessionResult.fromValue(int value) {
    switch (value) {
      case 0:
        return EBeginAuthSessionResult.ok;
      case 1:
        return EBeginAuthSessionResult.invalidTicket;
      case 2:
        return EBeginAuthSessionResult.duplicateRequest;
      case 3:
        return EBeginAuthSessionResult.invalidVersion;
      case 4:
        return EBeginAuthSessionResult.gameMismatch;
      case 5:
        return EBeginAuthSessionResult.expiredTicket;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EBeginAuthSessionResult'. The value was: '$value'",
        );
    }
  }
}
