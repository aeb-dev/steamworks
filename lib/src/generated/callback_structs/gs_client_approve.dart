import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GsClientApprove extends Struct {
  @UnsignedLongLong()
  external CSteamId steamId;

  @UnsignedLongLong()
  external CSteamId ownerSteamId;
}
