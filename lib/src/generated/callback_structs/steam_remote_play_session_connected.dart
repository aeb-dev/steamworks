// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamRemotePlaySessionConnected extends Struct {
  static int get callbackId => 5701;

  @UnsignedInt()
  external RemotePlaySessionId sessionId;
}

extension SteamRemotePlaySessionConnectedExtensions
    on Pointer<SteamRemotePlaySessionConnected> {
  RemotePlaySessionId get sessionId => ref.sessionId;
}
