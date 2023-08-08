// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class MicroTxnAuthorizationResponse extends Struct {
  static int get callbackId => 152;

  @UnsignedInt()
  external int appId;

  @UnsignedLongLong()
  external int orderId;

  @UnsignedChar()
  external int authorized;
}

extension MicroTxnAuthorizationResponseExtensions
    on Pointer<MicroTxnAuthorizationResponse> {
  int get appId => ref.appId;

  int get orderId => ref.orderId;

  int get authorized => ref.authorized;
}
