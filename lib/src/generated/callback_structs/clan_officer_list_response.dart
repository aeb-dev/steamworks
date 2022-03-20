import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class ClanOfficerListResponse extends Struct {
  @UnsignedLongLong()
  external CSteamId steamIdClan;

  @Int()
  external int officers;

  @UnsignedChar()
  external int success;
}
