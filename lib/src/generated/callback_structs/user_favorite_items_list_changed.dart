// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class UserFavoriteItemsListChanged extends Struct {
  static int get callbackId => 3407;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool wasAddRequest;
}

extension UserFavoriteItemsListChangedExtensions
    on Pointer<UserFavoriteItemsListChanged> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);

  bool get wasAddRequest => ref.wasAddRequest;
}
