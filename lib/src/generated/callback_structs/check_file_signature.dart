// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/echeck_file_signature.dart";

@Packed(8)
final class CheckFileSignature extends Struct {
  static int get callbackId => 705;

  @Int32()
  external ECheckFileSignatureAliasDart checkFileSignature;
}

extension CheckFileSignatureExtensions on Pointer<CheckFileSignature> {
  ECheckFileSignature get checkFileSignature =>
      ECheckFileSignature.fromValue(ref.checkFileSignature);
}
