// ignore_for_file: public_member_api_docs
typedef ECheckFileSignature = int;

class ECheckFileSignatureEnum {
  static const int invalidSignature = 0;
  static const int validSignature = 1;
  static const int fileNotFound = 2;
  static const int noSignaturesFoundForThisApp = 3;
  static const int noSignaturesFoundForThisFile = 4;
}
