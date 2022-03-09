import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";

@Packed(4)
class SteamInventoryRequestPricesResult extends Struct {
  @Int32()
  external EResult esult;

  external Pointer<Utf8> currency;
}
