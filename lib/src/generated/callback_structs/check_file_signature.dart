// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/echeck_file_signature.dart";

@Packed(8)
class CheckFileSignature extends Struct {
  static int get callbackId => 705;

  @Int32()
  external ECheckFileSignatureAliasDart checkFileSignature;
}

extension CheckFileSignatureExtensions on Pointer<CheckFileSignature> {
  ECheckFileSignature get checkFileSignature =>
      ECheckFileSignature.fromValue(ref.checkFileSignature);
}
