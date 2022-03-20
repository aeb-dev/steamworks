import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInventoryFullUpdate extends Struct {
  @Int()
  external SteamInventoryResult handle;
}
