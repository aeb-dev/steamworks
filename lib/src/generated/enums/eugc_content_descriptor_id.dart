// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EUgcContentDescriptorIdAliasDart = int;
typedef EUgcContentDescriptorIdAliasC = Int32;

enum EUgcContentDescriptorId {
  nudityOrSexualContent(1),
  frequentViolenceOrGore(2),
  adultOnlySexualContent(3),
  gratuitousSexualContent(4),
  anyMatureContent(5),
  ;

  final int value;

  const EUgcContentDescriptorId(this.value);

  factory EUgcContentDescriptorId.fromValue(int value) {
    switch (value) {
      case 1:
        return EUgcContentDescriptorId.nudityOrSexualContent;
      case 2:
        return EUgcContentDescriptorId.frequentViolenceOrGore;
      case 3:
        return EUgcContentDescriptorId.adultOnlySexualContent;
      case 4:
        return EUgcContentDescriptorId.gratuitousSexualContent;
      case 5:
        return EUgcContentDescriptorId.anyMatureContent;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EUgcContentDescriptorId'. The value was: '$value'",
        );
    }
  }
}
