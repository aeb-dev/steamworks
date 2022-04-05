import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class DownloadItemResult extends Struct {
  static int get callbackId => 3406;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResult result;
}

extension DownloadItemResultExtensions on Pointer<DownloadItemResult> {
  AppId get appId => ref.appId;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => ref.result;
}
