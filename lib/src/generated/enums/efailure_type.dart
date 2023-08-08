// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EFailureTypeAliasDart = int;
typedef EFailureTypeAliasC = Int32;

enum EFailureType {
  flushedCallbackQueue(0),
  pipeFail(1),
  ;

  final int value;

  const EFailureType(this.value);

  factory EFailureType.fromValue(int value) {
    switch (value) {
      case 0:
        return EFailureType.flushedCallbackQueue;
      case 1:
        return EFailureType.pipeFail;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EFailureType'. The value was: '$value'",
        );
    }
  }
}
