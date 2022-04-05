import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class UserStatsReceived extends Struct {
  static int get callbackId => 1101;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}

extension UserStatsReceivedExtensions on Pointer<UserStatsReceived> {
  int get gameId => ref.gameId;

  EResult get result => ref.result;

  CSteamId get steamIdUser => ref.steamIdUser;
}
