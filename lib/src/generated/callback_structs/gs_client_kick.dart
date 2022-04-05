// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/edeny_reason.dart";
import "../typedefs.dart";

@Packed(8)
class GsClientKick extends Struct {
  static int get callbackId => 203;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int32()
  external EDenyReason denyReason;
}

extension GsClientKickExtensions on Pointer<GsClientKick> {
  CSteamId get steamId => ref.steamId;

  EDenyReason get denyReason => ref.denyReason;
}
