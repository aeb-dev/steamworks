import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class RemoteStorageEnumerateUserPublishedFilesResult extends Struct {
  static int get callbackId => 1312;

  @Int32()
  external EResult result;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> publishedFileId;
}

extension RemoteStorageEnumerateUserPublishedFilesResultExtensions
    on Pointer<RemoteStorageEnumerateUserPublishedFilesResult> {
  EResult get result => ref.result;

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;

  Array<UnsignedLongLong> get publishedFileId => ref.publishedFileId;
}
