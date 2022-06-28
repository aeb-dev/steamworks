// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EFailureType'. The value was: '$value'";
    }
  }
}
