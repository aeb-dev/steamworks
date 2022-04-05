import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class GsPolicyResponse extends Struct {
  static int get callbackId => 115;

  @UnsignedChar()
  external int secure;
}

extension GsPolicyResponseExtensions on Pointer<GsPolicyResponse> {
  int get secure => ref.secure;
}
