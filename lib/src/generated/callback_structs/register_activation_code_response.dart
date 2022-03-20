import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_register_activation_code_result.dart";

@Packed(8)
class RegisterActivationCodeResponse extends Struct {
  @Int32()
  external ERegisterActivationCodeResult result;

  @UnsignedInt()
  external int packageRegistered;
}
