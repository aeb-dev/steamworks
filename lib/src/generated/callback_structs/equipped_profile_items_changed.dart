// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
final class EquippedProfileItemsChanged extends Struct {
  static int get callbackId => 350;

  @UnsignedLongLong()
  external CSteamId steamId;
}

extension EquippedProfileItemsChangedExtensions
    on Pointer<EquippedProfileItemsChanged> {
  CSteamId get steamId => ref.steamId;
}
