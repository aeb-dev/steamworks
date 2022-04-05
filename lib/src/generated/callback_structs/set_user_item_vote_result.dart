import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class SetUserItemVoteResult extends Struct {
  static int get callbackId => 3408;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResult result;

  @Bool()
  external bool voteUp;
}

extension SetUserItemVoteResultExtensions on Pointer<SetUserItemVoteResult> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => ref.result;

  bool get voteUp => ref.voteUp;
}
