// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class GetOpfSettingsResult extends Struct {
  static int get callbackId => 4624;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external AppId videoAppId;
}

extension GetOpfSettingsResultExtensions on Pointer<GetOpfSettingsResult> {
  EResult get result => EResult.fromValue(ref.result);

  AppId get videoAppId => ref.videoAppId;
}
