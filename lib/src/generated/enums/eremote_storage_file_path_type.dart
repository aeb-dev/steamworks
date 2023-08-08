// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ERemoteStorageFilePathTypeAliasDart = int;
typedef ERemoteStorageFilePathTypeAliasC = Int32;

enum ERemoteStorageFilePathType {
  invalid(0),
  absolute(1),
  apiFilename(2),
  ;

  final int value;

  const ERemoteStorageFilePathType(this.value);

  factory ERemoteStorageFilePathType.fromValue(int value) {
    switch (value) {
      case 0:
        return ERemoteStorageFilePathType.invalid;
      case 1:
        return ERemoteStorageFilePathType.absolute;
      case 2:
        return ERemoteStorageFilePathType.apiFilename;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ERemoteStorageFilePathType'. The value was: '$value'",
        );
    }
  }
}
