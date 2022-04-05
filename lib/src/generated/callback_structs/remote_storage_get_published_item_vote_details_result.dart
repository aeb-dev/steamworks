import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageGetPublishedItemVoteDetailsResult extends Struct {
  static int get callbackId => 1320;

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

extension RemoteStorageGetPublishedItemVoteDetailsResultExtensions
    on Pointer<RemoteStorageGetPublishedItemVoteDetailsResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  int get votesFor => ref.votesFor;

  int get votesAgainst => ref.votesAgainst;

  int get reports => ref.reports;

  double get fScore => ref.fScore;
}
