// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoteStorageGetPublishedItemVoteDetailsResult extends Struct {
  static int get callbackId => 1320;

  @Int32()
  external EResultAliasDart result;

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
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  int get votesFor => ref.votesFor;

  int get votesAgainst => ref.votesAgainst;

  int get reports => ref.reports;

  double get fScore => ref.fScore;
}
