// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class JoinPartyCallback extends Struct {
  static int get callbackId => 5301;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PartyBeaconId beaconId;

  @UnsignedLongLong()
  external CSteamId steamIdBeaconOwner;

  external Pointer<Utf8> connectString;
}

extension JoinPartyCallbackExtensions on Pointer<JoinPartyCallback> {
  EResult get result => EResult.fromValue(ref.result);

  PartyBeaconId get beaconId => ref.beaconId;

  CSteamId get steamIdBeaconOwner => ref.steamIdBeaconOwner;

  Pointer<Utf8> get connectString => ref.connectString;
}
