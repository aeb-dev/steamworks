// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eregister_activation_code_result.dart";

@Packed(8)
class RegisterActivationCodeResponse extends Struct {
  static int get callbackId => 1008;

  @Int32()
  external ERegisterActivationCodeResultAliasDart result;

  @UnsignedInt()
  external int packageRegistered;
}

extension RegisterActivationCodeResponseExtensions
    on Pointer<RegisterActivationCodeResponse> {
  ERegisterActivationCodeResult get result =>
      ERegisterActivationCodeResult.fromValue(ref.result);

  int get packageRegistered => ref.packageRegistered;
}
