// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class SteamInputDeviceConnected extends Struct {
  static int get callbackId => 2801;

  @UnsignedLongLong()
  external InputHandle connectedDeviceHandle;
}

extension SteamInputDeviceConnectedExtensions
    on Pointer<SteamInputDeviceConnected> {
  InputHandle get connectedDeviceHandle => ref.connectedDeviceHandle;
}
