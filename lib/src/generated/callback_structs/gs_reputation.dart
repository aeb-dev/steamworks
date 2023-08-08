// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class GsReputation extends Struct {
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
