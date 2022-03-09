import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SteamApiCallCompleted extends Struct {
  @UnsignedLongLong()
  external SteamApiCall asyncCall;

  @Int()
  external int callback;

  @UnsignedInt()
  external int paramSize;
}
