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

extension SteamItemDetailsExtensions on Pointer<SteamItemDetails> {
  SteamItemInstanceId get itemId => ref.itemId;

  SteamItemDef get definition => ref.definition;

  int get quantity => ref.quantity;

  int get flags => ref.flags;
}
