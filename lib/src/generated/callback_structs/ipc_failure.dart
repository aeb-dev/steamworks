import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class IpcFailure extends Struct {
  @UnsignedChar()
  external int failureType;
}
