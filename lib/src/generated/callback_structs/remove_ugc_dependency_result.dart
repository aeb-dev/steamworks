// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoveUgcDependencyResult extends Struct {
  static int get callbackId => 3413;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedLongLong()
  external PublishedFileId childPublishedFileId;
}

extension RemoveUgcDependencyResultExtensions
    on Pointer<RemoveUgcDependencyResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  PublishedFileId get childPublishedFileId => ref.childPublishedFileId;
}
