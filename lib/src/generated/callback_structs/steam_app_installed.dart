// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class SteamAppInstalled extends Struct {
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
