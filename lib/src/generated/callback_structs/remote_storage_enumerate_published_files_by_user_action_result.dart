import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../enums/e_workshop_file_action.dart";

@Packed(8)
class RemoteStorageEnumeratePublishedFilesByUserActionResult extends Struct {
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
