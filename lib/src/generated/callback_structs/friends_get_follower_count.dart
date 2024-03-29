// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class FriendsGetFollowerCount extends Struct {
  static int get callbackId => 344;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int count;
}

extension FriendsGetFollowerCountExtensions
    on Pointer<FriendsGetFollowerCount> {
  EResult get result => EResult.fromValue(ref.result);

  CSteamId get steamId => ref.steamId;

  int get count => ref.count;
}
