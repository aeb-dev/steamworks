import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class MicroTxnAuthorizationResponse extends Struct {
  @UnsignedInt()
  external int appId;

  @UnsignedLongLong()
  external int orderId;

  @UnsignedChar()
  external int authorized;
}
