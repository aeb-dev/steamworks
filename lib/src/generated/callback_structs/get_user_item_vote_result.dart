// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class GetUserItemVoteResult extends Struct {
  static int get callbackId => 3409;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool votedUp;

  @Bool()
  external bool votedDown;

  @Bool()
  external bool voteSkipped;
}

extension GetUserItemVoteResultExtensions on Pointer<GetUserItemVoteResult> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);

  bool get votedUp => ref.votedUp;

  bool get votedDown => ref.votedDown;

  bool get voteSkipped => ref.voteSkipped;
}
