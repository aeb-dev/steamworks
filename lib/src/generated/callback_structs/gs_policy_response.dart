import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class GsPolicyResponse extends Struct {
  @UnsignedChar()
  external int secure;
}
