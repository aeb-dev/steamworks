// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
final class FriendsEnumerateFollowingList extends Struct {
  static int get callbackId => 346;

  @Int32()
  external EResultAliasDart result;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> steamId;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;
}

extension FriendsEnumerateFollowingListExtensions
    on Pointer<FriendsEnumerateFollowingList> {
  EResult get result => EResult.fromValue(ref.result);

  Array<UnsignedLongLong> get steamId => ref.steamId;

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;
}
