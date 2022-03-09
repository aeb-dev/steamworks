import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class FriendsIsFollowing extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Bool()
  external bool isFollowing;
}
