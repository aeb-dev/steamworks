// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class AddUgcDependencyResult extends Struct {
  static int get callbackId => 3412;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedLongLong()
  external PublishedFileId childPublishedFileId;
}

extension AddUgcDependencyResultExtensions on Pointer<AddUgcDependencyResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  PublishedFileId get childPublishedFileId => ref.childPublishedFileId;
}
