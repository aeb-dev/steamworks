import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class GsReputation extends Struct {
  static int get callbackId => 209;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external int reputationScore;

  @Bool()
  external bool banned;

  @UnsignedInt()
  external int bannedIp;

  @UnsignedShort()
  external int bannedPort;

  @UnsignedLongLong()
  external int bannedGameId;

  @UnsignedInt()
  external int banExpires;
}

extension GsReputationExtensions on Pointer<GsReputation> {
  EResult get result => ref.result;

  int get reputationScore => ref.reputationScore;

  bool get banned => ref.banned;

  int get bannedIp => ref.bannedIp;

  int get bannedPort => ref.bannedPort;

  int get bannedGameId => ref.bannedGameId;

  int get banExpires => ref.banExpires;
}
