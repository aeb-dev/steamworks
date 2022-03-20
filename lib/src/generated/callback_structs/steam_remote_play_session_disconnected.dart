import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamRemotePlaySessionDisconnected extends Struct {
  @UnsignedInt()
  external RemotePlaySessionId sessionId;
}
