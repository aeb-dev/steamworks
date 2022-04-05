// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class GsStatsStored extends Struct {
  static int get callbackId => 1801;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}

extension GsStatsStoredExtensions on Pointer<GsStatsStored> {
  EResult get result => ref.result;

  CSteamId get steamIdUser => ref.steamIdUser;
}
