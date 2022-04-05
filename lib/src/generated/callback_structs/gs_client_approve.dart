// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GsClientApprove extends Struct {
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
