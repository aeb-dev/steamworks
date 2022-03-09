import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class TimedTrialStatus extends Struct {
  @UnsignedInt()
  external AppId appId;

  @Bool()
  external bool isOffline;

  @UnsignedInt()
  external int secondsAllowed;

  @UnsignedInt()
  external int secondsPlayed;
}
