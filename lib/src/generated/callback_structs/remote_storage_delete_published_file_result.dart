import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageDeletePublishedFileResult extends Struct {
  static int get callbackId => 1311;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension RemoteStorageDeletePublishedFileResultExtensions
    on Pointer<RemoteStorageDeletePublishedFileResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
