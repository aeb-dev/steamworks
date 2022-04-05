import "dart:ffi";
import "package:ffi/ffi.dart";
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
