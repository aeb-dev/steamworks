// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class RemoteStoragePublishedFileDeleted extends Struct {
  static int get callbackId => 1323;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;
}

extension RemoteStoragePublishedFileDeletedExtensions
    on Pointer<RemoteStoragePublishedFileDeleted> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get appId => ref.appId;
}
