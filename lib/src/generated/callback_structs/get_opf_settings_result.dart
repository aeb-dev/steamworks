import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class GetOpfSettingsResult extends Struct {
  static int get callbackId => 4624;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external AppId videoAppId;
}

extension GetOpfSettingsResultExtensions on Pointer<GetOpfSettingsResult> {
  EResult get result => ref.result;

  AppId get videoAppId => ref.videoAppId;
}
