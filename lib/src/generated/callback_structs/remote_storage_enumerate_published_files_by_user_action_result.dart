// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eresult.dart";
import "../enums/eworkshop_file_action.dart";

@Packed(8)
final class RemoteStorageEnumeratePublishedFilesByUserActionResult
    extends Struct {
  static int get callbackId => 1328;

  @Int32()
  external EResultAliasDart result;

  @Int32()
  external EWorkshopFileActionAliasDart action;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> publishedFileId;

  @Array<UnsignedInt>(50)
  external Array<UnsignedInt> rTimeUpdated;
}

extension RemoteStorageEnumeratePublishedFilesByUserActionResultExtensions
    on Pointer<RemoteStorageEnumeratePublishedFilesByUserActionResult> {
  EResult get result => EResult.fromValue(ref.result);

  EWorkshopFileAction get action => EWorkshopFileAction.fromValue(ref.action);

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;

  Array<UnsignedLongLong> get publishedFileId => ref.publishedFileId;

  Array<UnsignedInt> get rTimeUpdated => ref.rTimeUpdated;
}
