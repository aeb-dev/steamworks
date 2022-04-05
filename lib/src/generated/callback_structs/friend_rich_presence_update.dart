import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class FriendRichPresenceUpdate extends Struct {
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
