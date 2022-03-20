import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(8)
class GetUserItemVoteResult extends Struct {
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
