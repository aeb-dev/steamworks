import "dart:ffi";
import "package:ffi/ffi.dart";
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
