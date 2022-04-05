import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class IpcFailure extends Struct {
  static int get callbackId => 117;

  @UnsignedChar()
  external int failureType;
}

extension IpcFailureExtensions on Pointer<IpcFailure> {
  int get failureType => ref.failureType;
}
