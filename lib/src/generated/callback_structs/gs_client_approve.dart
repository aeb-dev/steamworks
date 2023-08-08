// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GsClientApprove extends Struct {
  static int get callbackId => 201;

  @UnsignedLongLong()
  external CSteamId steamId;

  @UnsignedLongLong()
  external CSteamId ownerSteamId;
}

extension GsClientApproveExtensions on Pointer<GsClientApprove> {
  CSteamId get steamId => ref.steamId;

  CSteamId get ownerSteamId => ref.ownerSteamId;
}
