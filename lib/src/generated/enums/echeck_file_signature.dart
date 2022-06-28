// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ECheckFileSignatureAliasDart = int;
typedef ECheckFileSignatureAliasC = Int32;

enum ECheckFileSignature {
  invalidSignature(0),
  validSignature(1),
  fileNotFound(2),
  noSignaturesFoundForThisApp(3),
  noSignaturesFoundForThisFile(4),
  ;

  final int value;

  const ECheckFileSignature(this.value);

  factory ECheckFileSignature.fromValue(int value) {
    switch (value) {
      case 0:
        return ECheckFileSignature.invalidSignature;
      case 1:
        return ECheckFileSignature.validSignature;
      case 2:
        return ECheckFileSignature.fileNotFound;
      case 3:
        return ECheckFileSignature.noSignaturesFoundForThisApp;
      case 4:
        return ECheckFileSignature.noSignaturesFoundForThisFile;
      default:
        throw "Unknown value for 'ECheckFileSignature'. The value was: '$value'";
    }
  }
}
