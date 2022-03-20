import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class P2pSessionRequest extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdRemote;
}
