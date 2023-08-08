// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class SteamItemDetails extends Struct {
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
