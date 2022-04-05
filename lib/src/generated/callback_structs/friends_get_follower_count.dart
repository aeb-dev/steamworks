import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class FriendsGetFollowerCount extends Struct {
  static int get callbackId => 344;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int count;
}

extension FriendsGetFollowerCountExtensions
    on Pointer<FriendsGetFollowerCount> {
  EResult get result => ref.result;

  CSteamId get steamId => ref.steamId;

  int get count => ref.count;
}
