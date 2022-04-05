import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class RemoteStorageEnumerateUserSharedWorkshopFilesResult extends Struct {
  static int get callbackId => 1326;

  @Int32()
  external EResult result;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> publishedFileId;
}

extension RemoteStorageEnumerateUserSharedWorkshopFilesResultExtensions
    on Pointer<RemoteStorageEnumerateUserSharedWorkshopFilesResult> {
  EResult get result => ref.result;

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;

  Array<UnsignedLongLong> get publishedFileId => ref.publishedFileId;
}
