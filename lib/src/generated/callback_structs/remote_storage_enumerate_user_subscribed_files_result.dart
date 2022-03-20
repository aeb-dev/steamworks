import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";

@Packed(8)
class RemoteStorageEnumerateUserSubscribedFilesResult extends Struct {
  @Int32()
  external EResult result;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> publishedFileId;

  @Array<UnsignedInt>(50)
  external Array<UnsignedInt> rTimeSubscribed;
}
