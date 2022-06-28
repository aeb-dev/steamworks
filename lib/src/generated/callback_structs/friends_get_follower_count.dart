// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class FriendsGetFollowerCount extends Struct {
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
