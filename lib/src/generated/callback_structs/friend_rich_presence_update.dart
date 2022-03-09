import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class FriendRichPresenceUpdate extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdFriend;

  @UnsignedInt()
  external AppId appId;
}
