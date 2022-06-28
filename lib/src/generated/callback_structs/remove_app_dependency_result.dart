// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(8)
class RemoveAppDependencyResult extends Struct {
  static int get callbackId => 3415;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;
}

extension RemoveAppDependencyResultExtensions
    on Pointer<RemoveAppDependencyResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get appId => ref.appId;
}
