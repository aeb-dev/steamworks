// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class RemoteStoragePublishedFileUpdated extends Struct {
  static int get callbackId => 1330;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external int unused;
}

extension RemoteStoragePublishedFileUpdatedExtensions
    on Pointer<RemoteStoragePublishedFileUpdated> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get appId => ref.appId;

  int get unused => ref.unused;
}
