// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class ClanOfficerListResponse extends Struct {
  static int get callbackId => 335;

  @UnsignedLongLong()
  external CSteamId steamIdClan;

  @Int()
  external int officers;

  @UnsignedChar()
  external int success;
}

extension ClanOfficerListResponseExtensions
    on Pointer<ClanOfficerListResponse> {
  CSteamId get steamIdClan => ref.steamIdClan;

  int get officers => ref.officers;

  int get success => ref.success;
}
