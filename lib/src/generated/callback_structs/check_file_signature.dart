import "dart:ffi";

import "../enums/echeck_file_signature.dart";

@Packed(8)
class CheckFileSignature extends Struct {
  static int get callbackId => 705;

  @Int32()
  external ECheckFileSignature checkFileSignature;
}

extension CheckFileSignatureExtensions on Pointer<CheckFileSignature> {
  ECheckFileSignature get checkFileSignature => ref.checkFileSignature;
}
