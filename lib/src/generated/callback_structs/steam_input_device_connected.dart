import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SteamInputDeviceConnected extends Struct {
  @UnsignedLongLong()
  external InputHandle connectedDeviceHandle;
}
