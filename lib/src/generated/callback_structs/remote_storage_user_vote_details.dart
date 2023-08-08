// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../enums/eworkshop_vote.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoteStorageUserVoteDetails extends Struct {
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
