// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

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
