// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class GsClientGroupStatus extends Struct {
  static int get callbackId => 208;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @UnsignedLongLong()
  external CSteamId steamIdGroup;

  @Bool()
  external bool member;

  @Bool()
  external bool officer;
}

extension GsClientGroupStatusExtensions on Pointer<GsClientGroupStatus> {
  CSteamId get steamIdUser => ref.steamIdUser;

  CSteamId get steamIdGroup => ref.steamIdGroup;

  bool get member => ref.member;

  bool get officer => ref.officer;
}
