import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../enums/e_workshop_vote.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageUserVoteDetails extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EWorkshopVote vote;
}
