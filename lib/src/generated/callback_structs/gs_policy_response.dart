// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class GsPolicyResponse extends Struct {
  static int get callbackId => 115;

  @UnsignedChar()
  external int secure;
}

extension GsPolicyResponseExtensions on Pointer<GsPolicyResponse> {
  int get secure => ref.secure;
}
