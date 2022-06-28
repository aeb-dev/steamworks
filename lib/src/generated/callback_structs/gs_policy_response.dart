// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class GsPolicyResponse extends Struct {
  static int get callbackId => 115;

  @UnsignedChar()
  external int secure;
}

extension GsPolicyResponseExtensions on Pointer<GsPolicyResponse> {
  int get secure => ref.secure;
}
