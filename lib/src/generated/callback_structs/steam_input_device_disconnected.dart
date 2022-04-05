import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInputDeviceDisconnected extends Struct {
  static int get callbackId => 2802;

  @UnsignedLongLong()
  external InputHandle disconnectedDeviceHandle;
}

extension SteamInputDeviceDisconnectedExtensions
    on Pointer<SteamInputDeviceDisconnected> {
  InputHandle get disconnectedDeviceHandle => ref.disconnectedDeviceHandle;
}
