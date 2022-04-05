import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageUpdateUserPublishedItemVoteResult extends Struct {
  static int get callbackId => 1324;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension RemoteStorageUpdateUserPublishedItemVoteResultExtensions
    on Pointer<RemoteStorageUpdateUserPublishedItemVoteResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
