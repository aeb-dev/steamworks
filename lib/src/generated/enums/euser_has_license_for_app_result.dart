// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EUserHasLicenseForAppResultAliasDart = int;
typedef EUserHasLicenseForAppResultAliasC = Int32;

enum EUserHasLicenseForAppResult {
  hasLicense(0),
  doesNotHaveLicense(1),
  noAuth(2),
  ;

  final int value;

  const EUserHasLicenseForAppResult(this.value);

  factory EUserHasLicenseForAppResult.fromValue(int value) {
    switch (value) {
      case 0:
        return EUserHasLicenseForAppResult.hasLicense;
      case 1:
        return EUserHasLicenseForAppResult.doesNotHaveLicense;
      case 2:
        return EUserHasLicenseForAppResult.noAuth;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EUserHasLicenseForAppResult'. The value was: '$value'",
        );
    }
  }
}
