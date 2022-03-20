import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class GsClientGroupStatus extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @UnsignedLongLong()
  external CSteamId steamIdGroup;

  @Bool()
  external bool member;

  @Bool()
  external bool officer;
}
