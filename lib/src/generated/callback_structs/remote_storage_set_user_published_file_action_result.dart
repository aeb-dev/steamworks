// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/eresult.dart";
import "../enums/eworkshop_file_action.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageSetUserPublishedFileActionResult extends Struct {
  static int get callbackId => 1327;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EWorkshopFileActionAliasDart action;
}

extension RemoteStorageSetUserPublishedFileActionResultExtensions
    on Pointer<RemoteStorageSetUserPublishedFileActionResult> {
  EResult get result => EResult.fromValue(ref.result);

  PublishedFileId get publishedFileId => ref.publishedFileId;

  EWorkshopFileAction get action => EWorkshopFileAction.fromValue(ref.action);
}
