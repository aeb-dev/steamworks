import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eregister_activation_code_result.dart";

@Packed(8)
class RegisterActivationCodeResponse extends Struct {
  static int get callbackId => 1008;

  @Int32()
  external ERegisterActivationCodeResult result;

  @UnsignedInt()
  external int packageRegistered;
}

extension RegisterActivationCodeResponseExtensions
    on Pointer<RegisterActivationCodeResponse> {
  ERegisterActivationCodeResult get result => ref.result;

  int get packageRegistered => ref.packageRegistered;
}
