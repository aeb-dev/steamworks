import "dart:ffi";
import "package:ffi/ffi.dart";
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
