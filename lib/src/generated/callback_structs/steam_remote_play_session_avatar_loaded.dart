// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
final class SteamRemotePlaySessionAvatarLoaded extends Struct {
  static int get callbackId => 5704;

  @UnsignedInt()
  external RemotePlaySessionId sessionId;

  @Int()
  external int image;

  @Int()
  external int wide;

  @Int()
  external int tall;
}

extension SteamRemotePlaySessionAvatarLoadedExtensions
    on Pointer<SteamRemotePlaySessionAvatarLoaded> {
  RemotePlaySessionId get sessionId => ref.sessionId;

  int get image => ref.image;

  int get wide => ref.wide;

  int get tall => ref.tall;
}
