import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SteamItemDetails extends Struct {
  @UnsignedLongLong()
  external SteamItemInstanceId temId;

  @Int()
  external SteamItemDef definition;

  @UnsignedShort()
  external int quantity;

  @UnsignedShort()
  external int flags;
}
