import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class CreateBeaconCallback extends Struct {
  static int get callbackId => 5302;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PartyBeaconId beaconId;
}

extension CreateBeaconCallbackExtensions on Pointer<CreateBeaconCallback> {
  EResult get result => ref.result;

  PartyBeaconId get beaconId => ref.beaconId;
}
