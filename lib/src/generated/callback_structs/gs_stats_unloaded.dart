// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class GsStatsUnloaded extends Struct {
  static int get callbackId => 1108;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}

extension GsStatsUnloadedExtensions on Pointer<GsStatsUnloaded> {
  CSteamId get steamIdUser => ref.steamIdUser;
}
