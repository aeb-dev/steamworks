// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../enums/eworkshop_file_action.dart";
import "../typedefs.dart";

@Packed(8)
class RemoteStorageSetUserPublishedFileActionResult extends Struct {
  static int get callbackId => 1327;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EWorkshopFileAction action;
}

extension RemoteStorageSetUserPublishedFileActionResultExtensions
    on Pointer<RemoteStorageSetUserPublishedFileActionResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  EWorkshopFileAction get action => ref.action;
}
