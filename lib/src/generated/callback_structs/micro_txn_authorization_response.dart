// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class MicroTxnAuthorizationResponse extends Struct {
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
