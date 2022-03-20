import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamApiCallCompleted extends Struct {
  @UnsignedLongLong()
  external SteamApiCall asyncCall;

  @Int()
  external int callback;

  @UnsignedInt()
  external int paramSize;
}
