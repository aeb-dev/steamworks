// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class IpcFailure extends Struct {
  static int get callbackId => 117;

  @UnsignedChar()
  external int failureType;
}

extension IpcFailureExtensions on Pointer<IpcFailure> {
  int get failureType => ref.failureType;
}
