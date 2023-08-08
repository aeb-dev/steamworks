// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/edeny_reason.dart";
import "../typedefs.dart";

@Packed(8)
final class GsClientKick extends Struct {
  static int get callbackId => 203;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int32()
  external EDenyReasonAliasDart denyReason;
}

extension GsClientKickExtensions on Pointer<GsClientKick> {
  CSteamId get steamId => ref.steamId;

  EDenyReason get denyReason => EDenyReason.fromValue(ref.denyReason);
}
