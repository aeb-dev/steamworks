import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(8)
class RemoteStorageEnumerateUserSubscribedFilesResult extends Struct {
  static int get callbackId => 1314;

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

extension RemoteStorageEnumerateUserSubscribedFilesResultExtensions
    on Pointer<RemoteStorageEnumerateUserSubscribedFilesResult> {
  EResult get result => ref.result;

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;

  Array<UnsignedLongLong> get publishedFileId => ref.publishedFileId;

  Array<UnsignedInt> get rTimeSubscribed => ref.rTimeSubscribed;
}
