// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class FriendRichPresenceUpdate extends Struct {
  static int get callbackId => 336;

  @UnsignedLongLong()
  external CSteamId steamIdFriend;

  @UnsignedInt()
  external AppId appId;
}

extension FriendRichPresenceUpdateExtensions
    on Pointer<FriendRichPresenceUpdate> {
  CSteamId get steamIdFriend => ref.steamIdFriend;

  AppId get appId => ref.appId;
}
