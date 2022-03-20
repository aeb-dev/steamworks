import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamItemDetails extends Struct {
  @UnsignedLongLong()
  external SteamItemInstanceId itemId;

  @Int()
  external SteamItemDef definition;

  @UnsignedShort()
  external int quantity;

  @UnsignedShort()
  external int flags;
}
