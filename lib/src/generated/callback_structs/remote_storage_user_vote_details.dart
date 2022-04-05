import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../enums/eworkshop_vote.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageUserVoteDetails extends Struct {
  static int get callbackId => 1325;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EWorkshopVote vote;
}

extension RemoteStorageUserVoteDetailsExtensions
    on Pointer<RemoteStorageUserVoteDetails> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  EWorkshopVote get vote => ref.vote;
}
