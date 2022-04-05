import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class GetUserItemVoteResult extends Struct {
  static int get callbackId => 3409;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResult result;

  @Bool()
  external bool votedUp;

  @Bool()
  external bool votedDown;

  @Bool()
  external bool voteSkipped;
}

extension GetUserItemVoteResultExtensions on Pointer<GetUserItemVoteResult> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => ref.result;

  bool get votedUp => ref.votedUp;

  bool get votedDown => ref.votedDown;

  bool get voteSkipped => ref.voteSkipped;
}
