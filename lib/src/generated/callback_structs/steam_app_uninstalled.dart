import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamAppUninstalled extends Struct {
  @UnsignedInt()
  external AppId appId;

  @Int()
  external int installFolderIndex;
}
