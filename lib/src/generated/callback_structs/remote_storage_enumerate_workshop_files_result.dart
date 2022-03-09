import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageEnumerateWorkshopFilesResult extends Struct {
  @Int32()
  external EResult result;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> gPublishedFileId;

  @Array<Float>(50)
  external Array<Float> gScore;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external int startIndex;
}
