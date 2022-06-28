// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class DlcInstalled extends Struct {
  static int get callbackId => 1005;

  @UnsignedInt()
  external AppId appId;
}

extension DlcInstalledExtensions on Pointer<DlcInstalled> {
  AppId get appId => ref.appId;
}
