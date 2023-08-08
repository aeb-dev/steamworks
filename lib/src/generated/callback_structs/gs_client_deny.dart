// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/edeny_reason.dart";
import "../typedefs.dart";

@Packed(8)
final class GsClientDeny extends Struct {
  static int get callbackId => 202;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int32()
  external EDenyReasonAliasDart denyReason;

  external Pointer<Utf8> optionalText;
}

extension GsClientDenyExtensions on Pointer<GsClientDeny> {
  CSteamId get steamId => ref.steamId;

  EDenyReason get denyReason => EDenyReason.fromValue(ref.denyReason);

  Pointer<Utf8> get optionalText => ref.optionalText;
}
