import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SteamInventoryFullUpdate extends Struct {
  @Int()
  external SteamInventoryResult andle;
}
