// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class Ps3TrophiesInstalled extends Struct {
  static int get callbackId => 1112;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int requiredDiskSpace;
}

extension Ps3TrophiesInstalledExtensions on Pointer<Ps3TrophiesInstalled> {
  int get gameId => ref.gameId;

  EResult get result => EResult.fromValue(ref.result);

  int get requiredDiskSpace => ref.requiredDiskSpace;
}
