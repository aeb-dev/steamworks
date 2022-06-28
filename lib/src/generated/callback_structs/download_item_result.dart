// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

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
  external EResultAliasDart result;
}

extension DownloadItemResultExtensions on Pointer<DownloadItemResult> {
  AppId get appId => ref.appId;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);
}
