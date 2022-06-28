// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageUnsubscribePublishedFileResult extends Struct {
  static int get callbackId => 1315;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension RemoteStorageUnsubscribePublishedFileResultExtensions
    on Pointer<RemoteStorageUnsubscribePublishedFileResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
