// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class JoinPartyCallback extends Struct {
  static int get callbackId => 5301;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PartyBeaconId beaconId;

  @UnsignedLongLong()
  external CSteamId steamIdBeaconOwner;

  external Pointer<Utf8> connectString;
}

extension JoinPartyCallbackExtensions on Pointer<JoinPartyCallback> {
  EResult get result => ref.result;

  PartyBeaconId get beaconId => ref.beaconId;

  CSteamId get steamIdBeaconOwner => ref.steamIdBeaconOwner;

  Pointer<Utf8> get connectString => ref.connectString;
}
