import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../enums/e_workshop_file_action.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageSetUserPublishedFileActionResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EWorkshopFileAction action;
}
