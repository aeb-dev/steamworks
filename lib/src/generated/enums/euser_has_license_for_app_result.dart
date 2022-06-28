// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EUserHasLicenseForAppResult'. The value was: '$value'";
    }
  }
}
