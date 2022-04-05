import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class UserStatsUnloaded extends Struct {
  static int get callbackId => 1108;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}

extension UserStatsUnloadedExtensions on Pointer<UserStatsUnloaded> {
  CSteamId get steamIdUser => ref.steamIdUser;
}
