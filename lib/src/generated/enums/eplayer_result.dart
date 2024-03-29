// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EPlayerResultAliasDart = int;
typedef EPlayerResultAliasC = Int32;

enum EPlayerResult {
  failedToConnect(1),
  abandoned(2),
  kicked(3),
  incomplete(4),
  completed(5),
  ;

  final int value;

  const EPlayerResult(this.value);

  factory EPlayerResult.fromValue(int value) {
    switch (value) {
      case 1:
        return EPlayerResult.failedToConnect;
      case 2:
        return EPlayerResult.abandoned;
      case 3:
        return EPlayerResult.kicked;
      case 4:
        return EPlayerResult.incomplete;
      case 5:
        return EPlayerResult.completed;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EPlayerResult'. The value was: '$value'",
        );
    }
  }
}
