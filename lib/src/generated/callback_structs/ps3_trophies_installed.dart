import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class Ps3TrophiesInstalled extends Struct {
  static int get callbackId => 1112;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int requiredDiskSpace;
}

extension Ps3TrophiesInstalledExtensions on Pointer<Ps3TrophiesInstalled> {
  int get gameId => ref.gameId;

  EResult get result => ref.result;

  int get requiredDiskSpace => ref.requiredDiskSpace;
}
