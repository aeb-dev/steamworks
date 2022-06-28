// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ERegisterActivationCodeResultAliasDart = int;
typedef ERegisterActivationCodeResultAliasC = Int32;

enum ERegisterActivationCodeResult {
  resultOK(0),
  resultFail(1),
  resultAlreadyRegistered(2),
  resultTimeout(3),
  alreadyOwned(4),
  ;

  final int value;

  const ERegisterActivationCodeResult(this.value);

  factory ERegisterActivationCodeResult.fromValue(int value) {
    switch (value) {
      case 0:
        return ERegisterActivationCodeResult.resultOK;
      case 1:
        return ERegisterActivationCodeResult.resultFail;
      case 2:
        return ERegisterActivationCodeResult.resultAlreadyRegistered;
      case 3:
        return ERegisterActivationCodeResult.resultTimeout;
      case 4:
        return ERegisterActivationCodeResult.alreadyOwned;
      default:
        throw "Unknown value for 'ERegisterActivationCodeResult'. The value was: '$value'";
    }
  }
}
