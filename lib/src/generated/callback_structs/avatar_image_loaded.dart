import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class AvatarImageLoaded extends Struct {
  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int image;

  @Int()
  external int wide;

  @Int()
  external int tall;
}
