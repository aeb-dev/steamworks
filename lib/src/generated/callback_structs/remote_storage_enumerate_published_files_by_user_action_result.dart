import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../enums/eworkshop_file_action.dart";

@Packed(8)
class RemoteStorageEnumeratePublishedFilesByUserActionResult extends Struct {
  static int get callbackId => 1328;

  @Int32()
  external EResult result;

  @Int32()
  external EWorkshopFileAction action;

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
  EResult get result => ref.result;

  EWorkshopFileAction get action => ref.action;

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;

  Array<UnsignedLongLong> get publishedFileId => ref.publishedFileId;

  Array<UnsignedInt> get rTimeUpdated => ref.rTimeUpdated;
}
