import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class IpcFailure extends Struct {
  @UnsignedChar()
  external int failureType;
}
