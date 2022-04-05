// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class FriendsIsFollowing extends Struct {
  static int get callbackId => 345;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Bool()
  external bool isFollowing;
}

extension FriendsIsFollowingExtensions on Pointer<FriendsIsFollowing> {
  EResult get result => ref.result;

  CSteamId get steamId => ref.steamId;

  bool get isFollowing => ref.isFollowing;
}
