// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoveUgcDependencyResult extends Struct {
  static int get callbackId => 3413;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedLongLong()
  external PublishedFileId childPublishedFileId;
}

extension RemoveUgcDependencyResultExtensions
    on Pointer<RemoveUgcDependencyResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  PublishedFileId get childPublishedFileId => ref.childPublishedFileId;
}
