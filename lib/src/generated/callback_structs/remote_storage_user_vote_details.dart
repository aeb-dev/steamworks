// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../enums/eworkshop_vote.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageUserVoteDetails extends Struct {
  static int get callbackId => 1325;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EWorkshopVoteAliasDart vote;
}

extension RemoteStorageUserVoteDetailsExtensions
    on Pointer<RemoteStorageUserVoteDetails> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  EWorkshopVote get vote => EWorkshopVote.fromValue(ref.vote);
}
