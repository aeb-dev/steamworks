import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class SteamInventoryResultReady extends Struct {
  @Int()
  external SteamInventoryResult andle;

  @Int32()
  external EResult esult;
}
