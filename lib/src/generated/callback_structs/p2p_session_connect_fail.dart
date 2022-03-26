import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class P2pSessionConnectFail extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdRemote;

  @UnsignedChar()
  external int p2pSessionError;
}