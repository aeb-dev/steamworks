// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class SteamRemotePlaySessionConnected extends Struct {
  static int get callbackId => 5701;

  @UnsignedInt()
  external RemotePlaySessionId sessionId;
}

extension SteamRemotePlaySessionConnectedExtensions
    on Pointer<SteamRemotePlaySessionConnected> {
  RemotePlaySessionId get sessionId => ref.sessionId;
}
