// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/ebroadcast_upload_result.dart";

@Packed(4)
final class BroadcastUploadStop extends Struct {
  static int get callbackId => 4605;

  @Int32()
  external EBroadcastUploadResultAliasDart result;
}

extension BroadcastUploadStopExtensions on Pointer<BroadcastUploadStop> {
  EBroadcastUploadResult get result =>
      EBroadcastUploadResult.fromValue(ref.result);
}
