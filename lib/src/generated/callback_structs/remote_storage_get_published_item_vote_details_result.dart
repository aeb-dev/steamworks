import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageGetPublishedItemVoteDetailsResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int()
  external int votesFor;

  @Int()
  external int votesAgainst;

  @Int()
  external int reports;

  @Float()
  external double fScore;
}
