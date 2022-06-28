// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class CreateBeaconCallback extends Struct {
  static int get callbackId => 5302;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PartyBeaconId beaconId;
}

extension CreateBeaconCallbackExtensions on Pointer<CreateBeaconCallback> {
  EResult get result => EResult.fromValue(ref.result);

  PartyBeaconId get beaconId => ref.beaconId;
}
