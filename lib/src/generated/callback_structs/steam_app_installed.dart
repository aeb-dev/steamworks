// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamAppInstalled extends Struct {
  static int get callbackId => 3901;

  @UnsignedInt()
  external AppId appId;

  @Int()
  external int installFolderIndex;
}

extension SteamAppInstalledExtensions on Pointer<SteamAppInstalled> {
  AppId get appId => ref.appId;

  int get installFolderIndex => ref.installFolderIndex;
}
