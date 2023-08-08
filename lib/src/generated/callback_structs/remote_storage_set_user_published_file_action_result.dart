// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../enums/eworkshop_file_action.dart";
import "../typedefs.dart";

@Packed(8)
final class RemoteStorageSetUserPublishedFileActionResult extends Struct {
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
