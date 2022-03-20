import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class GsReputation extends Struct {
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
