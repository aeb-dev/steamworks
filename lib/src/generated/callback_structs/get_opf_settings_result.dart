// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class GetOpfSettingsResult extends Struct {
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
