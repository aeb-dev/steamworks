import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SteamInputDeviceDisconnected extends Struct {
  @UnsignedLongLong()
  external InputHandle disconnectedDeviceHandle;
}
