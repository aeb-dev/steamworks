// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoveUgcDependencyResult extends Struct {
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
