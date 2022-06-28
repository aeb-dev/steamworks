// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SetUserItemVoteResult extends Struct {
  static int get callbackId => 3408;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool voteUp;
}

extension SetUserItemVoteResultExtensions on Pointer<SetUserItemVoteResult> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);

  bool get voteUp => ref.voteUp;
}
