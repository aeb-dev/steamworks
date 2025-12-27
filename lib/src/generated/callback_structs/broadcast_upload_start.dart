// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class BroadcastUploadStart extends Struct {
  static int get callbackId => 4604;

  @Bool()
  external bool isRTMP;
}

extension BroadcastUploadStartExtensions on Pointer<BroadcastUploadStart> {
  bool get isRTMP => ref.isRTMP;
}
