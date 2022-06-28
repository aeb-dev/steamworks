// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class SteamRemotePlaySessionDisconnected extends Struct {
  static int get callbackId => 5702;

  @UnsignedInt()
  external RemotePlaySessionId sessionId;
}

extension SteamRemotePlaySessionDisconnectedExtensions
    on Pointer<SteamRemotePlaySessionDisconnected> {
  RemotePlaySessionId get sessionId => ref.sessionId;
}
