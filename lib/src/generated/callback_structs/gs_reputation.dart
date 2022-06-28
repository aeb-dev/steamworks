// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class GsReputation extends Struct {
  static int get callbackId => 209;

  @Int32()
  external EResultAliasDart result;

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
  EResult get result => EResult.fromValue(ref.result);

  int get reputationScore => ref.reputationScore;

  bool get banned => ref.banned;

  int get bannedIp => ref.bannedIp;

  int get bannedPort => ref.bannedPort;

  int get bannedGameId => ref.bannedGameId;

  int get banExpires => ref.banExpires;
}
