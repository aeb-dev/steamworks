// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class IpcFailure extends Struct {
  static int get callbackId => 117;

  @UnsignedChar()
  external int failureType;
}

extension IpcFailureExtensions on Pointer<IpcFailure> {
  int get failureType => ref.failureType;
}
